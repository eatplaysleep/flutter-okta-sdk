class BaseRequest {
  /// The client id.
  String clientId;

  /// The URL of where the discovery document can be found.
  String discoveryUrl;

  /// The redirect URL when session ended.
  String endSessionRedirectUri;

  /// The redirect URL.
  String redirectUrl;

  /// The request scopes.
  List<String> scopes;

  /// OIDC loginHint.
  String? loginHint;

  String? userAgentTemplate;

  bool requireHardwareBackedKeyStore;

  String issuer;

  BaseRequest(
      {required this.clientId,
      required this.issuer,
      required this.discoveryUrl,
      required this.endSessionRedirectUri,
      required this.redirectUrl,
      required this.scopes,
      this.loginHint,
      this.userAgentTemplate,
      this.requireHardwareBackedKeyStore = false});
}

Map<String, Object?> convertBaseRequestToMap(BaseRequest baseRequest) {
  var _baseRequest = <String, Object?>{
    'clientId': baseRequest.clientId,
    'issuer': baseRequest.issuer,
    'discoveryUrl': baseRequest.discoveryUrl,
    'endSessionRedirectUri': baseRequest.endSessionRedirectUri,
    'redirectUrl': baseRequest.redirectUrl,
    'scopes': baseRequest.scopes,
    'userAgentTemplate': baseRequest.userAgentTemplate,
    'requireHardwareBackedKeyStore': baseRequest.requireHardwareBackedKeyStore,
  };

  if (baseRequest.loginHint != null) {
    _baseRequest['loginHint'] = baseRequest.loginHint;
  }

  return _baseRequest;
}
