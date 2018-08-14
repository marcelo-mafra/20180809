unit cosmos.classes.serversobj;

interface

uses
 Classes, Windows, SysUtils, DataSnap.DBClient, cosmos.system.types, cosmos.system.files,
 cosmos.system.messages, cosmos.classes.application, cosmos.servers.sqlcommands,
 cosmos.classes.persistence.ini, cosmos.classes.dataobjects, cosmos.classes.serversutils;

type

 TCosmosMethods = class
  private

  public
   class function GetServerDateTime: TDateTime;
   class function IsAdministrator(const UserName: WideString): Boolean;
   class function CanAccessModule(const UserId: integer; CosmosModule: TCosmosModules): boolean;
   class function GetCosmosSearchs: string;
 end;


implementation

{ TCosmosMethods }

class function TCosmosMethods.CanAccessModule(const UserId: integer;
  CosmosModule: TCosmosModules): boolean;
var
 APool: TCosmosConnectionsPool;
 ACommand: TCosmosCommand;
 ADataset: TClientDataset;
 sCommand, sParam: string;
begin
{Verifica se um usu�rio pode acessar determinado m�dulo do Cosmos.}
 APool := TCosmosConnectionsPool.Create(TCosmosInfoFiles.GetDatabaseConfigurationFile);
 APool.FillPool(1);

 ACommand := TCosmosCommand.Create;
 ACommand.ConnectionsPool := APool;
 ADataset := TClientDataset.Create(nil);

 try
  case CosmosModule of
    cmFocosServer, cmFocos: sParam := 'INDFOC = %s';
    cmSecretariasServer, cmSecretarias: sParam := 'INDSEC = %s';
    cmFinanceiroServer, cmFinanceiro: sParam := 'INDFIN = %s';
    cmConferenciasServer, cmConferencias: sParam := 'INDCON = %s';
    cmUsuariosServer, cmUsuarios: sParam := 'INDUSU = %s';
  end;

  sParam := Format(sParam, [QuotedStr('S')]);

  sCommand := Format(TSecurityCommand.UserModules, [UserId, sParam]);
  ACommand.ExecuteDQL(sCommand, ADataset);

  Result := not ADataset.IsEmpty;

  if Assigned(ACommand) then FreeAndNil(ACommand);
  if Assigned(ADataset) then FreeAndNil(ADataset);
  if Assigned(APool) then
     begin
       APool.ClearAll;
       FreeAndNil(APool);
     end;

 except
  on E: Exception do
   begin
    if Assigned(ACommand) then FreeAndNil(ACommand);
    if Assigned(ADataset) then FreeAndNil(ADataset);
    if Assigned(APool) then
     begin
       APool.ClearAll;
       FreeAndNil(APool);
     end;
    raise;
   end;
 end;
end;

class function TCosmosMethods.GetCosmosSearchs: string;
var
Buffer: array[0..260] of Char;
CosmosFolder, sFilePath: string;
AFile: TIniFilePersistence;
begin
{Obt�m o caminho do arquivo de mapeamento de pesquisas da ferramenta
Central de Relat�rios.}
 try
  GetModuleFileName(0, Buffer, SizeOf(Buffer));
  CosmosFolder := Buffer;
  CosmosFolder := ExtractFilePath(CosmosFolder);
  sFilePath := CosmosFolder + TCosmosFiles.CosmosRoot; //do not localize!

  AFile := TIniFilePersistence.Create(sFilePath, False);
  Result := AFile.ReadString('AdmFiles', 'CosmosSearchsInfo', ''); //do not localize!

  except
   if Assigned(AFile) then
    FreeAndNil(AFile);
   raise;
  end;
end;

class function TCosmosMethods.GetServerDateTime: TDateTime;
begin
//Retorna data e hora do servidor.
 Result := Now;
end;

class function TCosmosMethods.IsAdministrator(
  const UserName: WideString): Boolean;
var
APool : TCosmosConnectionsPool;
ACommand: TCosmosCommand;
ADataset: TClientDataset;
sCommand: string;
begin
//Checa se um usu�rio � um administrador do sistema.
 APool := TCosmosConnectionsPool.Create(TCosmosInfoFiles.GetDatabaseConfigurationFile);
 APool.FillPool(1);

 ACommand := TCosmosCommand.Create;
 ACommand.ConnectionsPool := APool;
 ADataset := TClientDataset.Create(nil);

 try
  sCommand := Format(TSecurityCommand.AdmUSer,[QuotedStr(UserName)]);
  ACommand.ExecuteDQL(sCommand, ADataset);
  Result := ADataset.Fields.Fields[0].AsString = 'S';

  APool.ClearAll;
  if Assigned(ACommand) then FreeAndNil(ACommand);
  if Assigned(ADataset) then FreeAndNil(ADataset);
  if Assigned(APool) then FreeAndNil(APool);

 except
  on E: Exception do
   begin
    if Assigned(ACommand) then FreeAndNil(ACommand);
    if Assigned(ADataset) then FreeAndNil(ADataset);
    if Assigned(APool) then
     begin
       APool.ClearAll;
       FreeAndNil(APool);
     end;
    raise;
   end;
 end;
end;

end.
