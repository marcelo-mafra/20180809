unit cosmos.server.secretarias.appcontainer;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.SvcMgr, Datasnap.DSTCPServerTransport,
  Datasnap.DSServer, Datasnap.DSCommonServer, Datasnap.DSAuth, IPPeerServer,
  Datasnap.DSSession, cosmos.system.files, cosmos.system.types, cosmos.system.messages,
  cosmos.system.exceptions, cosmos.classes.application, Data.DBXCommon, cosmos.classes.logs,
  cosmos.classes.persistence.ini, Data.DBCommonTypes, cosmos.servers.common.servicesint,
  cosmos.servers.common.dao.interfaces;

type
  TOnPrepareCommandEvent = procedure(Session: TDSSession) of object;
  TOnConnectServerEvent = procedure(DSConnectEventObject: TDSConnectEventObject) of object;
  TOnDisconnectServerEvent = procedure(DSConnectEventObject: TDSConnectEventObject) of object;

  //Implementa um servidor Datasnap como um servi�odo Windows.
  TDMSecretariasAppContainer = class(TService)
    DSServerSecretarias: TDSServer;
    DSAuthenticationManager: TDSAuthenticationManager;
    DSServerApplicationClass: TDSServerClass;
    DSServerLectoriumClass: TDSServerClass;
    DSServerLogradourosClass: TDSServerClass;
    DSServerAtividadesClass: TDSServerClass;
    DSServerHistoricoClass: TDSServerClass;
    DSServerTPClass: TDSServerClass;
    DSEscolaInternaClass: TDSServerClass;
    DSFocosClass: TDSServerClass;
    DSTCPServerTransport: TDSTCPServerTransport;
    procedure DSServerApplicationClassGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DSAuthenticationManagerUserAuthenticate(Sender: TObject;
      const Protocol, Context, User, Password: string; var valid: Boolean;
      UserRoles: TStrings);
    procedure DSServerLectoriumClassGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DSServerLogradourosClassGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DSServerAtividadesClassGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DSServerSecretariasPrepare(
      DSPrepareEventObject: TDSPrepareEventObject);
    procedure DSServerSecretariasError(DSErrorEventObject: TDSErrorEventObject);
    procedure DSServerSecretariasConnect(
      DSConnectEventObject: TDSConnectEventObject);
    procedure DSServerSecretariasDisconnect(
      DSConnectEventObject: TDSConnectEventObject);
    function DSServerSecretariasTrace(TraceInfo: TDBXTraceInfo): CBRType;
    procedure DSAuthenticationManagerUserAuthorize(Sender: TObject;
      AuthorizeEventObject: TDSAuthorizeEventObject; var valid: Boolean);
    procedure DSServerHistoricoClassGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DSServerTPClassGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DSEscolaInternaClassGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DSFocosClassGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure ServiceCreate(Sender: TObject);
    procedure ServiceDestroy(Sender: TObject);
    procedure ServiceStart(Sender: TService; var Started: Boolean);
  private
    { Private declarations }
    FOnConnectServer: TOnConnectServerEvent;
    FOnDisconnectServer: TOnDisconnectServerEvent;
    FOnPrepareCommand: TOnPrepareCommandEvent;
    FCosmosServiceFactory: ICosmosServiceFactory;
    FCosmosDAOServiceFactory: ICosmosDAOServiceFactory;

    procedure LoadMethodsAuthorizations;
    procedure LoadServerConfigurations;

    function GetCosmosService: ICosmosService;
    function GetDAOServices: ICosmosDAOService;

  protected
    //M�todos para que o gerenciador de servi�os do Windows controlem o servi�o.
    function DoStop: Boolean; override;
    function DoPause: Boolean; override;
    function DoContinue: Boolean; override;
    procedure DoInterrogate; override;

  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function GetServiceController: TServiceController; override;

    property CosmosServices: ICosmosService read GetCosmosService;
    property DAOServices: ICosmosDAOService read GetDAOServices;

    property OnConnectServer: TOnConnectServerEvent read FOnConnectServer write FOnConnectServer;
    property OnDisconnectServer: TOnDisconnectServerEvent read FOnDisconnectServer write FOnDisconnectServer;
    property OnPrepareCommand: TOnPrepareCommandEvent read FOnPrepareCommand write FOnPrepareCommand;

  end;

//M�todos globais usados pelo Datasnap.
function DSServer: TDSServer;
function DSAuthenticationManager: TDSAuthenticationManager;

var
  DMSecretariasAppContainer: TDMSecretariasAppContainer;

implementation

uses cosmos.servers.common.methods,
  cosmos.servers.secretarias.lectorium.methods,
  cosmos.servers.common.security.authorizations, cosmos.server.common.logradouros.methods,
  cosmos.servers.secretarias.atividades.methods, cosmos.servers.secretarias.historico.methods,
  cosmos.servers.secretarias.tp.methods, cosmos.servers.secretarias.ei.methods,
  cosmos.servers.secretarias.focos.methods, cosmos.servers.common.services.factory,
  cosmos.servers.common.dao.factory;

{$R *.dfm}

var
  FDSServer: TDSServer;
  FDSAuthenticationManager: TDSAuthenticationManager;

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  DMSecretariasAppContainer.Controller(CtrlCode);
end;

function DSServer: TDSServer;
begin
  Result := FDSServer;
end;

function DSAuthenticationManager: TDSAuthenticationManager;
begin
  Result := FDSAuthenticationManager;
end;

//M�todos para controle do servi�o pelo Windows.
function TDMSecretariasAppContainer.DoContinue: Boolean;
begin
  Result := inherited;
  DSServerSecretarias.Start;
end;

function TDMSecretariasAppContainer.GetCosmosService: ICosmosService;
begin
 Result := self.FCosmosServiceFactory.CosmosService;
end;

function TDMSecretariasAppContainer.GetDAOServices: ICosmosDAOService;
begin
 Result := self.FCosmosDAOServiceFactory.DAOService;
end;

function TDMSecretariasAppContainer.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TDMSecretariasAppContainer.DoInterrogate;
begin
  inherited;
end;

function TDMSecretariasAppContainer.DoPause: Boolean;
begin
  DSServerSecretarias.Stop;
  Result := inherited;
end;

function TDMSecretariasAppContainer.DoStop: Boolean;
begin
  DSServerSecretarias.Stop;
  Result := inherited;
end;

procedure TDMSecretariasAppContainer.DSServerApplicationClassGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := TDMCosmosApplicationServer;
end;

procedure TDMSecretariasAppContainer.DSServerAtividadesClassGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := TDMSecAtividadesServerMethods;
end;

procedure TDMSecretariasAppContainer.DSServerHistoricoClassGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := TCosmosSecHistoricoServerMethods;
end;

procedure TDMSecretariasAppContainer.DSServerLectoriumClassGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := TDMSecLectoriumServerMethods;
end;

procedure TDMSecretariasAppContainer.DSServerLogradourosClassGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := TDMCosmosServerLogradouros;
end;

procedure TDMSecretariasAppContainer.DSServerSecretariasConnect(
  DSConnectEventObject: TDSConnectEventObject);
var
 AInfo: string;
 AContextInfo: TStringList;
begin
 {Registra informa��es de logs de opera��es de conex�o.}

 //Prepara o objeto que receber� as informa��es de contexto da conex�o.
 AContextInfo := CosmosServices.CreateContextInfoObject;

 try
  with DSConnectEventObject do
   begin
    //Registra os dados da conex�o no log do sistema
    AInfo := Format(TCosmosLogs.ConnectedUser, [ConnectProperties[TDBXPropertyNames.DSAuthenticationUser]]);
    AContextInfo.Append(Format(TCosmosLogs.ContextInfoUser, [ConnectProperties[TDBXPropertyNames.DSAuthenticationUser]]));
    AContextInfo.Append(Format(TCosmosLogs.ContextInfoSession, [TDSSessionManager.GetThreadSession.Id]));
    AContextInfo.Append(Format(TCosmosLogs.ContextInfoRoles, [TDSSessionManager.GetThreadSession.GetData('UserRoles')]));
    AContextInfo.Append(Format(TCosmosLogs.ContextInfoProtocol, [ConnectProperties[TDBXPropertyNames.CommunicationProtocol]]));
    AContextInfo.Append(FormatDateTime('dd/mm/yyyy hh:nn:ss:zzz', Now)); //do not localize!

    CosmosServices.RegisterLog(AInfo, AContextInfo.DelimitedText, leOnConnect);

    //Registra na janela do servidor o usu�rio conectado.
    AContextInfo.Clear;
    AContextInfo.Append(ConnectProperties[TDBXPropertyNames.DSAuthenticationUser]);
    AContextInfo.Append(DateTimeToStr(Now));
    AContextInfo.Append(ConnectProperties[TDBXPropertyNames.CommunicationProtocol]);

    if Assigned(OnConnectServer) then OnConnectServer(DsConnectEventObject);
   end;

 finally
  AContextInfo.Free;
 end;
end;

procedure TDMSecretariasAppContainer.DSServerSecretariasDisconnect(
  DSConnectEventObject: TDSConnectEventObject);
var
 AInfo: string;
 AContextInfo: TStringList;
begin
 {Registra informa��es de logs de opera��es de desconex�o.}
 AContextInfo := CosmosServices.CreateContextInfoObject;

 try
  with DSConnectEventObject do
   begin
    AInfo := Format(TCosmosLogs.DisconnectedUser, [ConnectProperties[TDBXPropertyNames.DSAuthenticationUser]]);

    AContextInfo.Append(Format(TCosmosLogs.ContextInfoSession, [TDSSessionManager.GetThreadSession.Id]));
    AContextInfo.Append(Format(TCosmosLogs.ContextInfoUser, [ConnectProperties[TDBXPropertyNames.DSAuthenticationUser]]));
    AContextInfo.Append(Format(TCosmosLogs.ContextInfoRoles, [TDSSessionManager.GetThreadSession.GetData('UserRoles')]));
    AContextInfo.Append(Format(TCosmosLogs.ContextInfoProtocol, [ConnectProperties[TDBXPropertyNames.CommunicationProtocol]]));
   end;

  CosmosServices.RegisterLog(AInfo, AContextInfo.DelimitedText, leOnConnectClose);

  if Assigned(OnDisconnectServer) then OnDisconnectServer(DSConnectEventObject);

 finally
  AContextInfo.Free;
 end;
end;

procedure TDMSecretariasAppContainer.DSServerSecretariasError(
  DSErrorEventObject: TDSErrorEventObject);
var
 Info: string;
 AContextInfo: TStringList;
begin
 {Registra informa��es de logs de erros de execu��o de m�todos remotos.}
 if leOnError in CosmosServices.LogEvents then
  begin
   AContextInfo := CosmosServices.CreateContextInfoObject;

   try
    with DSErrorEventObject do
     begin
      Info := DSErrorEventObject.Error.Message;
      AContextInfo.Append(Format(TCosmosLogs.ContextInfoSession, [TDSSessionManager.GetThreadSession.Id]));
      AContextInfo.Append(Format(TCosmosLogs.ContextInfoUser, [TDSSessionManager.GetThreadSession.GetData('UserName')]));
      AContextInfo.Append(Format(TCosmosLogs.ContextInfoRoles, [TDSSessionManager.GetThreadSession.GetData('UserRoles')]));
      AContextInfo.Append(Format(TCosmosLogs.ContextInfoProtocol, [ServerConnectionHandler.Channel.ChannelInfo.ClientInfo.Protocol]));
     end;

    CosmosServices.RegisterLog(Info, AContextInfo.DelimitedText, leOnError);

   finally
    FreeAndNil(AContextInfo);
   end;
  end;
end;

procedure TDMSecretariasAppContainer.DSServerSecretariasPrepare(
  DSPrepareEventObject: TDSPrepareEventObject);
var
 Info: string;
 AContextInfo: TStringList;
begin
 {Registra informa��es de logs de prepara��o de execu��o de m�todos remotos.}
 if leOnPrepare in CosmosServices.LogEvents then
  begin
   AContextInfo := CosmosServices.CreateContextInfoObject;

   try
    with DSPrepareEventObject do
     begin
      Info := DSPrepareEventObject.MethodAlias;
      AContextInfo.Append(Format(TCosmosLogs.ContextInfoSession, [TDSSessionManager.GetThreadSession.Id]));
      AContextInfo.Append(Format(TCosmosLogs.ContextInfoUser, [TDSSessionManager.GetThreadSession.GetData('UserName')]));
      AContextInfo.Append(Format(TCosmosLogs.ContextInfoRoles, [TDSSessionManager.GetThreadSession.GetData('UserRoles')]));
      AContextInfo.Append(Format(TCosmosLogs.ContextInfoProtocol, [ServerConnectionHandler.Channel.ChannelInfo.ClientInfo.Protocol]));
     end;

    CosmosServices.RegisterLog(Info, AContextInfo.DelimitedText, leOnPrepare);

    //Dispara um evento de notifica��o que pode ser capturado.
    if Assigned(FOnPrepareCommand) then FOnPrepareCommand(TDSSessionManager.GetThreadSession);

   finally
    FreeAndNil(AContextInfo);
   end;
  end;
end;

function TDMSecretariasAppContainer.DSServerSecretariasTrace(
  TraceInfo: TDBXTraceInfo): CBRType;
var
 Info: string;
 AContextInfo: TStringList;
begin
 {Registra informa��es de logs de trace, caso a gera��o para este tipo de
 evento esteja ativa.}
 if leOnTrace in CosmosServices.LogEvents then
  begin
   AContextInfo := CosmosServices.CreateContextInfoObject;

   try
    Info := TraceInfo.Message;
    AContextInfo.Append(Format(TCosmosLogs.ContextInfoSession, [TDSSessionManager.GetThreadSession.Id]));
    AContextInfo.Append(Format(TCosmosLogs.ContextInfoUser, [TDSSessionManager.GetThreadSession.GetData('UserName')]));
    AContextInfo.Append(Format(TCosmosLogs.ContextInfoRoles, [TDSSessionManager.GetThreadSession.GetData('UserRoles')]));

    CosmosServices.RegisterLog(Info, AContextInfo.DelimitedText, leOnTrace);

   finally
    FreeAndNil(AContextInfo);
   end;
  end;
end;

procedure TDMSecretariasAppContainer.DSServerTPClassGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := TCosmosSecTPServerMethods;
end;

procedure TDMSecretariasAppContainer.LoadMethodsAuthorizations;
var
 I: integer;
 IAuthorizations: IXMLAuthorizationsType;
 IMethodInfo: IXMLMethodInfoType;
 ARoleInfo: TDSRoleItem;
 CosmosApp: TCosmosApplication;
begin
{Carrega as informa��es de autoriza��o existente no arquivo de configura��o de
 permiss�es "RolesPermissions.xml". Essas informa��es se referem tanto ao acesso
 a funcionalidadades como a m�todos remotos. Este m�todo apenas carrega as autoriza��es
 relativas aos m�todos remotos.}
 CosmosApp := TCosmosApplication.Create;
 IAuthorizations := LoadAuthorizations(CosmosApp.GetModulePath + TCosmosFiles.RolesPermissions);
 DSAuthenticationManager.Roles.Clear;

 try
  for I := 0 to Pred(IAuthorizations.Methods.Count) do
   begin
    IMethodInfo := IAuthorizations.Methods.MethodInfo[I];
    if (IMethodInfo.CosmosModule = TCosmosAppName.CosmosSecretariasId) or (IMethodInfo.CosmosModule = TCosmosAppName.CosmosCommonId) then
     begin
      ARoleInfo := TDSRoleItem(DSAuthenticationManager.Roles.Add);
      ARoleInfo.ApplyTo.CommaText := IMethodInfo.MethodName;
      ARoleInfo.AuthorizedRoles.CommaText := IMethodInfo.AuthorizedRoles;
      ARoleInfo.DeniedRoles.CommaText := IMethodInfo.DeniedRoles;
      ARoleInfo.Exclude.CommaText := IMethodInfo.Exclude;
     end;
   end;

  CosmosServices.Logs.RegisterInfo(TCosmosLogs.AuthorizationsMethods);

 finally
  if Assigned(IAuthorizations) then IAuthorizations := nil;
  if Assigned(CosmosApp) then FreeAndNil(CosmosApp);
 end;
end;

procedure TDMSecretariasAppContainer.LoadServerConfigurations;
 var
  AFile: TIniFilePersistence;
  CurrentProtocol: string;
  CosmosApp: TCosmosApplication;
begin
{Carregas as configura��es do servidor em execu��o. Estas configura��es envolvem
 protocolos de conex�o, certificados, dentre outros itens.}
 CosmosApp := TCosmosApplication.Create;
 AFile := TIniFilePersistence.Create(CosmosApp.GetModulePath + TCosmosFiles.CosmosRoot, True);

 try
  //Configura��es das classes expostas remotamente.
  DSServerApplicationClass.LifeCycle := AFile.ReadString('GSEC', 'DSServerApplicationClass.LifeCycle', 'Session'); //do not localize!
  DSServerLectoriumClass.LifeCycle := DSServerApplicationClass.LifeCycle;
  DSServerLogradourosClass.LifeCycle := DSServerApplicationClass.LifeCycle;
  DSServerAtividadesClass.LifeCycle := DSServerApplicationClass.LifeCycle;

  if Assigned(AFile) then FreeAndNil(AFile);
  if Assigned(CosmosApp) then  FreeAndNil(CosmosApp);

 except
  on E: EInvalidProtocol do
   begin
     //Gerar logs de exce��o...
    CosmosServices.RegisterLog(E.Message, Format(TCosmosLogs.ContextInfoProtocol, [CurrentProtocol]), leOnError);
    DSServerSecretarias.Stop;
   end;
  on E: Exception do
   begin
     //Gerar logs de exce��o...
    CosmosServices.RegisterLog(E.Message, Format(TCosmosLogs.AppMethod, ['TDMSecretariasAppContainer.LoadServerConfigurations']), leOnError); //do not localize!
   end;
 end;
end;

procedure TDMSecretariasAppContainer.ServiceStart(Sender: TService;
  var Started: Boolean);
begin
  DSServerSecretarias.Start;
end;

constructor TDMSecretariasAppContainer.Create(AOwner: TComponent);
begin
  inherited;
  FDSServer := DSServerSecretarias;
  FDSAuthenticationManager := DSAuthenticationManager;
end;

destructor TDMSecretariasAppContainer.Destroy;
begin
  FDSServer := nil;
  FDSAuthenticationManager := nil;
  inherited;
end;

procedure TDMSecretariasAppContainer.ServiceCreate(Sender: TObject);
begin
 FDSServer := DSServerSecretarias;
 FDSAuthenticationManager := DSAuthenticationManager;

 //Cria os objetos que disponibilizam m�todos de servi�os e acesso a dados.
 FCosmosServiceFactory := TCosmosServiceFactory.New(cmSecretariasServer);
 FCosmosDAOServiceFactory := TCosmosDAOServiceFactory.New(cmSecretariasServer);

 //Carrega as configura��es do servidor
 LoadServerConfigurations;

 //Carrega as autoriza��es para cada m�todo remoto.
 LoadMethodsAuthorizations;

 CosmosServices.RegisterLog(TCosmosLogs.InitializedServer, '');
end;

procedure TDMSecretariasAppContainer.ServiceDestroy(Sender: TObject);
begin
  FDSServer := nil;
  FDSAuthenticationManager := nil;
  FCosmosServiceFactory := nil;
  FCosmosDAOServiceFactory := nil;
end;

procedure TDMSecretariasAppContainer.DSAuthenticationManagerUserAuthenticate(
  Sender: TObject; const Protocol, Context, User, Password: string;
  var valid: Boolean; UserRoles: TStrings);
var
 AInfo: string;
 AContextInfo: TStringList;
 UserData: TCosmosData;
begin
 {Autentica o usu�rio. Ap�s a autentica��o, o sistema armazena alguns dados
  do usu�rio e da conex�o no gerenciador de sess�es.}
 AContextInfo := CosmosServices.CreateContextInfoObject;
 UserData := TCosmosData.Create(15);

 try
  //Autentica o usu�rio.
  Valid := DAOServices.UserManager.AuthenticateUser(User, Password);

  if Valid then
    begin
     try
       //Obt�m informa��es sobre o usu�rio autenticado.
       DAOServices.UserManager.GetUserInfo(User, UserData);
       //Checa se o usu�rio est� ativo.
       Valid := UserData.FindValue('ATIVO');; //do not localize!
       if not Valid then
         raise EInactivedUser.Create('');

       //Checa se o usu�rio est� bloqueado.
       Valid := not DAOServices.UserManager.UserIsBlocked(User);
       if not Valid then
         raise EBlockedUser.Create('');

     except
       Valid := False;
     end;

     //Verifica se o usu�rio pode acessar o m�dulo corrente do Cosmos.
     Valid := DAOServices.UserManager.CanAcessModule(User, cmSecretariasServer);
     if not Valid then
       raise ECantAcessCosmosModule.Create('');

     //Se chegou aqui, o usu�rio est� autenticado.
     //Pega as roles do usu�rio autenticado e coloca os seus dados em sess�o.
     DAOServices.UserManager.GetUserRoles(User, UserRoles);
     TDSSessionManager.GetThreadSession.PutData('UserName', User); //do not localize!
     TDSSessionManager.GetThreadSession.PutData('UserRoles', UserRoles.CommaText); //do not localize!
     TDSSessionManager.GetThreadSession.PutData('ConnectedUser', UserData.FindValue('USER_NAME')); //do not localize!
     //TDSSessionManager.GetThreadSession.PutData('UserInfo', AUserInfo.CommaText); //do not localize!
     TDSSessionManager.GetThreadSession.PutData('ConnectTime', DateTimeToStr(Now)); //do not localize!

     //Agora registra logs sobre a autentica��o.
     AInfo := Format(TCosmosLogs.AutenticatedUser, [User]);
     AContextInfo.Append(Format(TCosmosLogs.ContextInfoProtocol, [protocol]));
     AContextInfo.Append(Context);
     CosmosServices.RegisterLog(AInfo, AContextInfo.CommaText, leOnAuthenticateSucess);
    end
   else
    raise EValidateUser.Create(Format(TCosmosLogs.InvalidAuthentication, [User]));

 AContextInfo.Free;
 UserData.Free;

 except
  on E: EValidateUser do//login ou senha inv�lidos
   begin
    AInfo := AInfo.Format(TCosmosLogs.InvalidAuthentication, [User]);
    AContextInfo.Append(Format(TCosmosLogs.ContextInfoProtocol, [protocol]));
    AContextInfo.Append(Context);
    CosmosServices.RegisterLog(AInfo, AContextInfo.CommaText, leOnAuthenticateFail);

    if Assigned(AContextInfo) then FreeAndNil(AContextInfo);
    if Assigned(UserData) then FreeAndNil(UserData);
   end;
   on E: EInactivedUser do //O usu�rio est� inativo.
   begin
    AInfo := Format(TCosmosLogs.InactivedUser, [User]);
    AContextInfo.Append(Format(TCosmosLogs.ContextInfoProtocol, [protocol]));
    AContextInfo.Append(Context);
    CosmosServices.RegisterLog(AInfo, AContextInfo.CommaText, leOnAuthenticateFail);

    if Assigned(AContextInfo) then FreeAndNil(AContextInfo);
    if Assigned(UserData) then FreeAndNil(UserData);
   end;
  on E: ECantAcessCosmosModule do  //O usu�rio n�o pode acessar o m�dulo corrente do Cosmos.
   begin
    AInfo := TCosmosLogs.CantAcessCosmosModule;
    AContextInfo.Append(Format(TCosmosLogs.ContextInfoProtocol, [protocol]));
    AContextInfo.Append(Context);
    CosmosServices.RegisterLog(AInfo, AContextInfo.CommaText, leOnAuthenticateFail);

    if Assigned(AContextInfo) then FreeAndNil(AContextInfo);
    if Assigned(UserData) then FreeAndNil(UserData);
   end;
  on E: EBlockedUser do  //O usu�rio est� bloqueado.
   begin
     AInfo := Format(TCosmosLogs.BlockedUser, [User]);
     AContextInfo.Append(Format(TCosmosLogs.ContextInfoProtocol, [protocol]));
     AContextInfo.Append(Context);
     CosmosServices.RegisterLog(AInfo, AContextInfo.CommaText, leOnAuthenticateFail);

    if Assigned(AContextInfo) then FreeAndNil(AContextInfo);
    if Assigned(UserData) then FreeAndNil(UserData);
   end;
  on E: Exception do //outros erros
   begin
    Valid := False;
    CosmosServices.RegisterLog(E.Message, '', leOnError);
    if Assigned(AContextInfo) then FreeAndNil(AContextInfo);
    if Assigned(UserData) then FreeAndNil(UserData);
   end;
 end;
end;

procedure TDMSecretariasAppContainer.DSAuthenticationManagerUserAuthorize(
  Sender: TObject; AuthorizeEventObject: TDSAuthorizeEventObject;
  var valid: Boolean);
var
 AInfo: string;
 AContextInfo: TStringList;
begin
 {Caso a autoriza��o seja negada e a gera��o de logs estiver ativa para esse
 evento, ser� registrado um log.}
 if not Valid then
  begin
    if leOnAuthorize in CosmosServices.LogEvents then
     begin
      AContextInfo := CosmosServices.CreateContextInfoObject;

      try
        AInfo := Format(TCosmosLogs.DeniedAuthorization, [AuthorizeEventObject.UserName,
         AuthorizeEventObject.MethodAlias]);
        AContextInfo.Append(Format(TCosmosLogs.ContextInfoRoles, [AuthorizeEventObject.UserRoles.CommaText]));
        AContextInfo.Append(Format(TCosmosLogs.AuthorizedRoles, [AuthorizeEventObject.AuthorizedRoles.CommaText]));
        CosmosServices.RegisterLog(AInfo, AContextInfo.CommaText, leOnAuthorize);

      finally
        AContextInfo.Free;
      end;
     end;
  end;
end;

procedure TDMSecretariasAppContainer.DSEscolaInternaClassGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := TCosmosSecEIServerMethods;
end;

procedure TDMSecretariasAppContainer.DSFocosClassGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := TDMCosmosFocosMethods;
end;

end.

