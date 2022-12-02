import 'package:search_reddit/service/firebase_auth/auth_result.dart';

abstract class AuthFirebaseInterface{
  Future<AuthResult> login(String email, String password);
  Future<AuthResult> register(String email, String password);
}