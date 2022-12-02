import 'package:firebase_auth/firebase_auth.dart';
import 'package:search_reddit/core/core_strings.dart';
import 'package:search_reddit/service/firebase_auth/auth_firebase.dart';
import 'package:search_reddit/service/firebase_auth/auth_result.dart';

class FirebaseAuthCustom implements AuthFirebaseInterface {
  FirebaseAuthCustom._internal();
  static final FirebaseAuthCustom _singleton = FirebaseAuthCustom._internal();
  factory FirebaseAuthCustom() => _singleton;

  @override
  Future<AuthResult> login(String email, String password) async {
    if(_isValidsInputs(email, password)){
      try {
        var result = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email, password: password);
        return result.user != null? AuthResult() :
          AuthResult(msgError: CoreStrings.notAuthenticated);          
      } on FirebaseAuthException catch (e) {
        if(e.code == CoreStrings.userNotFound){
          return AuthResult(msgError: CoreStrings.userNotFoundWithEmail);
        } else if (e.code == CoreStrings.wrongPassword){
          return AuthResult(msgError: CoreStrings.wrongPasswordThatUser);
        }
      }
    }
    return AuthResult(msgError: CoreStrings.notAuthInvalidInputs);
  }

  @override
  Future<AuthResult> register(String email, String password) async {
    if(_isValidsInputs(email, password)){
      try {
        var result = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email, password: password);
        return result.user != null? AuthResult() :
          AuthResult(msgError: CoreStrings.notAuthenticated);
      } on FirebaseAuthException catch (e) {
        if(e.code == CoreStrings.userNotFound){
          return AuthResult(msgError: CoreStrings.userNotFoundWithEmail);
        } else if (e.code == CoreStrings.wrongPassword){
          return AuthResult(msgError: CoreStrings.wrongPasswordThatUser);
        }
      }
    }
    return AuthResult(msgError: CoreStrings.notAuthInvalidInputs);
  }


  bool _isValidsInputs(String email, String password) =>
    email.isNotEmpty && password.isNotEmpty && password.length >= 6;
}