unit cosmos.system.servers;

interface

type

 TServerTypeMsg = class
   const
     Application = 'Windows standalone server';
     WinService = 'Windows Service server';
     ApacheModule = 'M�dulo do Apache Server';
 end;

 {"Tipos" (arquitetura de software) das aplica��es servidores: 1. aplicativos
   convencionais; 2. servi�os do Windows; 3. M�dulo do Apache Server.}
 TServerType = (stApplication, stWinService, stApacheModule);

 TServerTypeHelper = record helper for TServerType
   private
    function GetAsString: string;

   public
    property AsString: string read GetAsString;
 end;

implementation

{ TServerTypeHelper }

function TServerTypeHelper.GetAsString: string;
begin
 case self of
   stApplication: Result := TServerTypeMsg.Application ;
   stWinService: Result := TServerTypeMsg.WinService;
   stApacheModule: Result := TServerTypeMsg.ApacheModule;
 end;
end;

end.
