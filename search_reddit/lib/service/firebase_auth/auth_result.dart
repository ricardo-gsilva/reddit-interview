class AuthResult {
  final String? msgError;

  AuthResult({this.msgError});

  bool get isAuthenticated => msgError == null;
}