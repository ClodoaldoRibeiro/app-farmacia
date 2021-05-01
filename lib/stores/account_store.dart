import 'package:farmacia_app/models/user.dart';
import 'package:farmacia_app/repositories/user_repository.dart';
import 'package:farmacia_app/stores/user_manager_store.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:farmacia_app/helper/extension.dart';
part 'account_store.g.dart';

class AccountStore = _AccountStore with _$AccountStore;

abstract class _AccountStore with Store {
  _AccountStore() {
    //Recupera o usuário logado
    user = userManagerStore.user;
    if (user != null) {
      name = user.nome;
      CPF = user.CPF;
      email = user.email;
      phone = user.celular;
    }
  }

  User user;
  final UserManagerStore userManagerStore = GetIt.I<UserManagerStore>();

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

  @computed
  bool get isFormValid {
    return nomeValid && emailValid && phoneValid;
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

    user.nome = name;
    user.email = email;
    user.celular = phone;

    try {
      await UserRepository().save(user);
      userManagerStore.setUser(user);
    } catch (e) {
      erro = e;
    }

    loading = false;
  }

  @observable
  String erro;

  @action
  void reset() {
    erro = null;
  }
}
