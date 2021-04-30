import 'package:farmacia_app/helper/extension.dart';
import 'package:farmacia_app/repositories/user_repository.dart';
import 'package:mobx/mobx.dart';

part 'reset_password_store.g.dart';

class ResetPasswordStore = _ResetPasswordStore with _$ResetPasswordStore;

abstract class _ResetPasswordStore with Store {
  @observable
  String email;

  bool get emailValid {
    return email != null && email.isEmailValid();
  }

  @action
  void setEmail(String value) {
    reset();
    email = value;
  }

  @computed
  String get emailErro {
    if (email == null || emailValid)
      return null;
    else
      return "E-mail inválido";
  }

  @computed
  bool get formValid {
    return emailValid;
  }

  @computed
  Function get sendPressed => formValid ? resetPassword : null;

  @action
  Future<void> resetPassword() async {
    loading = true;

    try {
      await UserRepository().doUserResetPassword(email);

      reset();
      success =
          "As instruções de redefinição de senha foram enviadas para o e-mail";
    } catch (e) {
      error = e;
    }

    loading = false;
  }

  @observable
  bool loading = false;

  @observable
  String error;

  @observable
  String success;

  @action
  void reset() {
    error = null;
    success = null;
    email = null;
  }
}
