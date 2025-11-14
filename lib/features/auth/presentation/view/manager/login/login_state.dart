abstract class LoginState {}

class loginfailer extends LoginState {}

class loginsuccess extends LoginState {}

class loginerror extends LoginState {
  final String error;
  loginerror(this.error);
}
