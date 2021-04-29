import 'package:farmacia_app/models/user.dart';
import 'package:farmacia_app/repositories/user_repository.dart';
import 'package:farmacia_app/stores/user_manager_store.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

part 'singin_store.g.dart';

class SinginStore = _SinginStore with _$SinginStore;

abstract class _SinginStore with Store {
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
  bool loading = false;

  @computed
  bool get isFormValid {
    return passwordValid;
  }

  @computed
  Function get signInPressed {
    return (isFormValid && !loading) ? signIn : null;
  }

  @observable
  String erro;

  @action
  Future<void> signIn() async {
    loading = true;
    erro = null;

    try {
      final user = await UserRepository().loginWithEmail(CPF, password);
      GetIt.I<UserManagerStore>().setUser(user);
    } catch (e) {
      print(e);
      erro = e;
    }

    loading = false;
  }

  @observable
  String CPF;

  @action
  void setCPF(String valeu) {
    CPF = valeu;
  }
}
