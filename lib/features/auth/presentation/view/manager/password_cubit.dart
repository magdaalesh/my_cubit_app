import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum Passwordenum {
  loginpass,
  signuppass,
  configpass,
  resetpassword,
  resetconfig,
}

class PasswordCubit extends Cubit<Map<Passwordenum, bool>> {
  PasswordCubit()
    : super({
        Passwordenum.loginpass: true,
        Passwordenum.signuppass: true,
        Passwordenum.configpass: true,
        Passwordenum.resetconfig: true,
        Passwordenum.resetpassword: true,
      });
  void changeVisibility(Passwordenum type) {
    emit({...state, type: !(state[type] ?? true)});
  }

  bool getVisibility(Passwordenum type) {
    return state[type] ?? true;
  }

  IconData getIcon(Passwordenum type) {
    return !getVisibility(type) ? Icons.visibility : Icons.visibility_off;
  }
}
