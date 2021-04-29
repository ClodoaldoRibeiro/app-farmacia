import 'package:farmacia_app/helper/validator.dart';
import 'package:farmacia_app/models/user.dart';
import 'package:farmacia_app/repositories/user_repository.dart';
import 'package:mobx/mobx.dart';

part 'authentication_store.g.dart';

class AuthenticationStore = _AuthenticationStore with _$AuthenticationStore;

abstract class _AuthenticationStore with Store {
  @observable
  String cpf = "";

  @computed
  bool get isCPFValid => CPF.isValid(cpf);

  @action
  void setCPF(String value) => cpf = value;

  String get cpfError {
    if ((cpf.length < 14) || isCPFValid) {
      return null;
    } else {
      return "Digite um CPF inválido";
    }
  }

  @computed
  bool get formValid {
    return isCPFValid;
  }

  @computed
  Function get sendPressed => formValid ? existingAccount : null;

  @action
  Future<bool> existingAccount() async {
    bool cadastrado = false;

    loading = true;
    try {
      print("cpf: ${cpf}");
      List<User> users = await UserRepository().existingAccount(cpf);

      print("users:  ${users.length}");
      if (users != null && users.length > 0) cadastrado = true;
    } catch (e) {
      error = e;
    }

    loading = false;
    return cadastrado;
  }

  @observable
  bool loading = false;

  @observable
  String error;
}
