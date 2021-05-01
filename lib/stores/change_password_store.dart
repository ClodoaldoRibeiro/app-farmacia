import 'package:farmacia_app/models/user.dart';
import 'package:farmacia_app/repositories/user_repository.dart';
import 'package:farmacia_app/stores/user_manager_store.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

part 'change_password_store.g.dart';

class ChangePasswordStore = _ChangePasswordStore with _$ChangePasswordStore;

abstract class _ChangePasswordStore with Store {
  _ChangePasswordStore() {
    user = userManagerStore.user;
  }

  User user;
  final UserManagerStore userManagerStore = GetIt.I<UserManagerStore>();

  @observable
  String password;

  @action
  void setPassword(String valeu) {
    password = valeu;
  }

  bool get passwordValid {
    return password != null && password.length >= 6;
  }

  @computed
  String get passwordErro {
    if (password == null || passwordValid)
      return null;
    else if (password.isEmpty)
      return "Campo obrigatório";
    else
      return "Senha muito curta";
  }

  @observable
  String confirmationPassword;

  @action
  void setConfirmationPassword(String valeu) {
    confirmationPassword = valeu;
  }

  bool get confirmationPasswordValid {
    return confirmationPassword != null && confirmationPassword == password;
  }

  @computed
  String get confirmationPasswordErro {
    if (confirmationPassword == null || confirmationPasswordValid)
      return null;
    else
      return "Senha não coincidem";
  }

  @observable
  bool passwordVisibility = false;

  @computed
  bool get isPasswordVisibility {
    return passwordVisibility;
  }

  @action
  void togglePasswordVisibility() {
    passwordVisibility = !passwordVisibility;
  }

  @observable
  bool confirmationPasswordVisibility = false;

  @computed
  bool get isConfirmationPasswordVisibility {
    return confirmationPasswordVisibility;
  }

  @action
  void toggleconfirmationPasswordVisibility() {
    confirmationPasswordVisibility = !confirmationPasswordVisibility;
  }

  @computed
  bool get isFormValid {
    return passwordValid && confirmationPasswordValid;
  }

  @computed
  Function get signUpPressed {
    return (isFormValid && !loading) ? _save : null;
  }

  @observable
  bool loading = false;

  @action
  Future<void> _save() async {
    loading = true;

    user.senha = password;
    try {
      await UserRepository().save(user);
      userManagerStore.setUser(user);
      success = "Senha alterada com sucesso";
    } catch (e) {
      erro = e;
    }

    loading = false;
  }

  @observable
  String erro;

  @observable
  String success;

  @action
  void reset() {
    success = null;
    erro = null;
  }
}
