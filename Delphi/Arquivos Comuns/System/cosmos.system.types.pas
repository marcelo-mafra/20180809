unit cosmos.system.types;

{Cont�m alguns tipos primitivos usados ao logo das aplica��es Cosmos.}
interface

type

 TNotifyMode = (nmNotify, nmNoNotify, nmRegisterLog);

 //M�dulos do Cosmos.
 TCosmosModules = (cmFocos, cmFocosServer, cmSecretarias, cmSecretariasServer, cmFinanceiro,
  cmFinanceiroServer, cmConferencias, cmConferenciasServer, cmUsuarios,
  cmUsuariosServer, cmSincMestre, cmSincEscravo);

 TUserStatus = (usCosmosUser, usBlockedUser, usUnknown, usSysdba);
 {Status do usu�rio:
  "usCosmosUser" representa o usu�rio regular do Cosmos.
  "usBlockedUser" representa o usu�rio do Cosmos que est� bloqueado na tabela
                  de usu�rios.
  "usUnknown" indica que n�o foi poss�ve identificar o usu�rio na tabela de usu�rios.
  "usSysdba" indica que o usu�rio utilizado em uma conex�o foi o usu�rio
             interno do sistema.}

 //Tipos de mensagens aos usu�rios.
 TMessageType = (mtpSucess, mtpError, mtpWarning, mtpConfirmation, mtpInformation);

 //Informa��es existentes nas mensagens aos usu�rios.
 TMessageInfo = (miInnerMessage, miInstallationID, miMethodName, miMethodParameters,
   miRoleName, miSourceName, miUserName, miCommand, miExceptionClassName, miCustomInfo);

 //Formato de exporta��o de dados.
 TExportFormat = (efMSWord, efMSExcel, efXML, efHTML, efText, efOpenOffice, efCSV);

 TExportFormatSet = set of TExportFormat;

implementation

end.
