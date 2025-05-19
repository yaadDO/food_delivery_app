import '../../domain/entities/app_user.dart';

abstract class AuthState{}

//initial
class AuthInitial extends AuthState {}

//loading
class AuthLoading extends AuthState {}

//authenticated
class Authenticated extends AuthState {
  final AppUser user;
  final bool isAdmin;
  Authenticated(this.isAdmin, this.user);
}

//unauthenticated
class Unauthenticated extends AuthState {}

//errors
class AuthError extends AuthState {
  final String message;
  AuthError(this.message);
}
