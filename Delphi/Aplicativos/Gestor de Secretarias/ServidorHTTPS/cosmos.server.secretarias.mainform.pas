unit cosmos.server.secretarias.mainform;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants, System.IniFiles,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.AppEvnts, Vcl.StdCtrls,  Cosmos.System.Messages, Cosmos.Classes.Application,
  cosmos.servers.common.httpsengine, cosmos.system.files;

type
  TFrmServerMainForm = class(TForm)
    ButtonStart: TButton;
    ButtonStop: TButton;
    Label1: TLabel;
    ApplicationEvents1: TApplicationEvents;
    LblPort: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonStopClick(Sender: TObject);
    procedure Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label2MouseLeave(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private
    //Senha da chave privada do certificado digital gerado para a aplica��o.
    sPrivateKey: string;
    APort: integer;
    FServer: TSampleHTTPSEngine;

  public
    { Public declarations }
  end;

var
  FrmServerMainForm: TFrmServerMainForm;

implementation

{$R *.dfm}

uses
  WinApi.Windows, Winapi.ShellApi, Datasnap.DSSession;

procedure TFrmServerMainForm.ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
begin
  ButtonStart.Enabled := not FServer.Active;
  ButtonStop.Enabled := FServer.Active;
end;

procedure TFrmServerMainForm.ButtonStartClick(Sender: TObject);
begin
  FServer.StartServer;
end;

procedure TerminateThreads;
begin
  if TDSSessionManager.Instance <> nil then
    TDSSessionManager.Instance.TerminateAllSessions;
end;

procedure TFrmServerMainForm.ButtonStopClick(Sender: TObject);
begin
  TerminateThreads;
  FServer.StopServer;
end;

procedure TFrmServerMainForm.FormCreate(Sender: TObject);
var
  aStarterFile: TIniFile;
  MaxConnections:Integer;
  AFileName, CertFile, RootCertFile, KeyFile: string;
  CosmosApp: TCosmosApplication;
begin
{Executa o servidor standalone https, iniciando por obter as configura��es
 do servidor como certificados ssl, porta de comunica��o etc.}
 CosmosApp := TCosmosApplication.Create;
 AFileName := CosmosApp.GetModulePath + TCosmosFiles.CosmosRoot;
 aStarterFile := TIniFile.Create(AFileName);

 try
  //Certificado da Autoridade Certificadora.
  RootCertFile := aStarterFile.ReadString('Certificates', 'RootCertFile', '');
  //Certificado p�blico do Cosmos.
  CertFile := aStarterFile.ReadString('Certificates', 'CertificateFile', '');
  //Chave privada do Cosmos.
  KeyFile := aStarterFile.ReadString('Certificates', 'PrivateKeyFile', '');
  //Senha da chave privada.
  sPrivateKey := aStarterFile.ReadString('Certificates', 'PrivateKey', '');
  //Porta que o servidor estar� escutando.
  APort := aStarterFile.ReadInteger('GSEC', 'DSHTTPService.HttpsPort', 443);
  //N�mero m�ximo de conex�es concorrentes que ser�o aceitas pelo servidor.
  MaxConnections := aStarterFile.ReadInteger('GSEC', 'DSHTTPService.MaxConnections', 100);

 finally
  aStarterFile.Free;
  CosmosApp.Free;
 end;

  FServer := TSampleHTTPSEngine.Create(CertFile, RootCertFile, KeyFile, sPrivateKey, MaxConnections);
  FServer.DefaultPort := APort;
  FServer.StartServer;
end;

procedure TFrmServerMainForm.Label2Click(Sender: TObject);
var
  LURL: string;
begin
  FServer.StartServer;
  LURL := Format('https://localhost:%s', [APort.ToString]);
  ShellExecute(0, nil, PChar(LURL), nil, nil, SW_SHOWNOACTIVATE);
end;

procedure TFrmServerMainForm.Label2MouseLeave(Sender: TObject);
begin
 TLabel(Sender).Font.Style := [];
end;

procedure TFrmServerMainForm.Label2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 TLabel(Sender).Font.Style := [fsUnderline];
end;


end.
