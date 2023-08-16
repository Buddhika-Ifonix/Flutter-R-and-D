import 'package:myfirstapp/services/auth/auth_user.dart';

abstract class AuthProivder {
  Future<void> initialize();

  //returns an object of type AuthUser or null if no user is currently authenticated
  AuthUser? get currentUser;

  Future<AuthUser> logIn({
    required String email,
    required String password,
  });

  Future<AuthUser> createUser({
    required String email,
    required String password,
  });

  Future<void> logOUt();

  Future<void> sendEmailVerficate();
}
