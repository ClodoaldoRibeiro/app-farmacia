import 'package:farmacia_app/models/user.dart';
import 'package:farmacia_app/repositories/user_repository.dart';
import 'package:farmacia_app/stores/user_manager_store.dart';
import 'package:get_it/get_it.dart';
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

  @computed
  String get nameErro {
    if (name == null || nomeValid)
      return null;
    else if (name.isEmpty)
      return "Nome obrigatório";
    else
      return "Nome muito curto";
  }

  bool get nomeValid {
    return name != null && name.length > 6;
  }

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

  bool get phoneValid {
    return phone != null && phone.length >= 14;
  }

  @computed
  String get phoneErro {
    if (phone == null || phoneValid)
      return null;
    else if (phone.isEmpty)
      return "Campo obrigatório";
    else
      return "Celular inválido";
  }

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
    return nomeValid &&
        emailValid &&
        phoneValid &&
        passwordValid &&
        confirmationPasswordValid;
  }

  @computed
  Function get signUpPressed {
    return (isFormValid && !loading) ? signUp : null;
  }

  @observable
  bool loading = false;

  @action
  Future<void> signUp() async {
    loading = true;

    try {
      User user = User(
          CPF: CPF, nome: name, celular: phone, email: email, senha: password);
      await Future.delayed(Duration(seconds: 10));
      final newUser = await UserRepository().signUp(user);
      GetIt.I<UserManagerStore>().setUser(user);
    } catch (e) {
      erro = e;
    }

    loading = false;
  }

  @observable
  String erro;
}
