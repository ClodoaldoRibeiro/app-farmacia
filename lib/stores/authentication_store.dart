import 'package:farmacia_app/helper/validator.dart';
import 'package:flutter/material.dart';
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
  Function get sendPressed => formValid ? _send : null;

  @action
  Future<void> _send() async {
    loading = true;
    try {
      // await AdRepository().save(ad);
      // savedAd = true;
      await Future.delayed(Duration(seconds: 10));
    } catch (e) {
      error = e;
    }
    loading = false;
  }

  @observable
  bool loading = false;

  @observable
  String error;
}
