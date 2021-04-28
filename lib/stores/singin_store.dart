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

  @action
  Future<void> signIn() async {
    loading = true;

    Future.delayed(Duration(seconds: 5));

    loading = false;
  }

  @observable
  String erro;
}
