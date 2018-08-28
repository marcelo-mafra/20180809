unit cosmos.system.nettypes;

interface

type
  //Representa um protocolo de comunica��o com o servidor.
  TConnectionProtocol = (cpTCP, cpHTTP, cpHTTPS);

  TProtocols = set of TConnectionProtocol;

  TConnectionProtocolHelper = record helper for TConnectionProtocol
    private
     function GetAsString: string;

    public
     property AsString: string read GetAsString;
  end;

 {Representa a situa��o de uma conex�o como uma sequ�ncia de fases e status finais.}
 TConnectionStatus = (csOnConnectingHost, csHostConnected, csVerifyingIdentity,
   csGettingAuthorizations, csCheckingCertificate, csAuthorizedUser, csAuthenticationInvalid, csLoadingData,
   csApplyPermissions, csOnDisconnectingHost, csHostDisconnected,
   csUserLocked, csServerLocked, csAborted, csRefusedConnection, csHostNotFound,
   csTimeoutExpired, csConnectError, csCreatingConnectionsPool, csBufferingData);

implementation

{ TConnectionProtocolHelper }

function TConnectionProtocolHelper.GetAsString: string;
begin
 case self of
   cpTCP: Result := 'TCP/VPN'; //do not localize!
   cpHTTP: Result := 'HTTP'; //do not localize!
   cpHTTPS: Result := 'HTTPS'; //do not localize!
 end;
end;

end.
