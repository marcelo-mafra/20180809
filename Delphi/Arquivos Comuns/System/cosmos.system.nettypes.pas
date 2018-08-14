unit cosmos.system.nettypes;

interface

type
  //Representa um protocolo de comunica��o com o servidor.
  TConnectionProtocol = (cpTCP, cpHTTP, cpHTTPS);

  TProtocols = set of TConnectionProtocol;

 {Representa a situa��o de uma conex�o como uma sequ�ncia de fases e status finais.}
 TConnectionStatus = (csOnConnectingHost, csHostConnected, csVerifyingIdentity,
   csGettingAuthorizations, csCheckingCertificate, csAuthorizedUser, csAuthenticationInvalid, csLoadingData,
   csApplyPermissions, csOnDisconnectingHost, csHostDisconnected,
   csUserLocked, csServerLocked, csAborted, csRefusedConnection, csHostNotFound,
   csTimeoutExpired, csConnectError, csCreatingConnectionsPool, csBufferingData);

implementation

end.
