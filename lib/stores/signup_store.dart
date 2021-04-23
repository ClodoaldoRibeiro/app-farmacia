import 'package:mobx/mobx.dart';
import 'package:farmacia_app/helper/extension.dart';

part 'signup_store.g.dart';

class SignupStore = _SignupStore with _$SignupStore;

abstract class _SignupStore with Store {
  @observable
  String CPF;

  @action
  void setCPF(String valeu) {
    CPF = valeu;
  }

  @observable
  String email;

  @action
  void setEmail(String valeu) {
    email = valeu;
  }

  bool get emailValid {
    return email != null && email.isEmailValid();
  }

  @computed
  String get emailErro {
    if (email == null || emailValid)
      return null;
    else
      return "E-mail inválido";
  }

  @observable
  String name;

  @action
  void setName(String valeu) {
    name = valeu;
  }

  @observable
  String phone;

  @action
  void setPhone(String valeu) {
    phone = valeu;
  }

  @observable
  String password;

  @action
  void setPassword(String valeu) {
    password = valeu;
  }

  @observable
  String confirmationPassword;

  @action
  void setConfirmationPassword(String valeu) {
    confirmationPassword = valeu;
  }

  @observable
  bool passwordVisibility;

  @computed
  bool get isPasswordVisibility {
    return passwordVisibility;
  }

  @action
  void togglePasswordVisibility() {
    passwordVisibility = !passwordVisibility;
  }

  @observable
  bool confirmationPasswordVisibility;

  @computed
  bool get isConfirmationPasswordVisibility {
    return confirmationPasswordVisibility;
  }

  @action
  void toggleconfirmationPasswordVisibility() {
    confirmationPasswordVisibility = !confirmationPasswordVisibility;
  }
}
