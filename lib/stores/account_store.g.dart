// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AccountStore on _AccountStore, Store {
  Computed<String> _$emailErroComputed;

  @override
  String get emailErro =>
      (_$emailErroComputed ??= Computed<String>(() => super.emailErro,
              name: '_AccountStore.emailErro'))
          .value;
  Computed<String> _$nameErroComputed;

  @override
  String get nameErro =>
      (_$nameErroComputed ??= Computed<String>(() => super.nameErro,
              name: '_AccountStore.nameErro'))
          .value;
  Computed<String> _$phoneErroComputed;

  @override
  String get phoneErro =>
      (_$phoneErroComputed ??= Computed<String>(() => super.phoneErro,
              name: '_AccountStore.phoneErro'))
          .value;
  Computed<bool> _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_AccountStore.isFormValid'))
          .value;
  Computed<Function> _$signUpPressedComputed;

  @override
  Function get signUpPressed =>
      (_$signUpPressedComputed ??= Computed<Function>(() => super.signUpPressed,
              name: '_AccountStore.signUpPressed'))
          .value;

  final _$CPFAtom = Atom(name: '_AccountStore.CPF');

  @override
  String get CPF {
    _$CPFAtom.reportRead();
    return super.CPF;
  }

  @override
  set CPF(String value) {
    _$CPFAtom.reportWrite(value, super.CPF, () {
      super.CPF = value;
    });
  }

  final _$emailAtom = Atom(name: '_AccountStore.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$nameAtom = Atom(name: '_AccountStore.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$phoneAtom = Atom(name: '_AccountStore.phone');

  @override
  String get phone {
    _$phoneAtom.reportRead();
    return super.phone;
  }

  @override
  set phone(String value) {
    _$phoneAtom.reportWrite(value, super.phone, () {
      super.phone = value;
    });
  }

  final _$loadingAtom = Atom(name: '_AccountStore.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$erroAtom = Atom(name: '_AccountStore.erro');

  @override
  String get erro {
    _$erroAtom.reportRead();
    return super.erro;
  }

  @override
  set erro(String value) {
    _$erroAtom.reportWrite(value, super.erro, () {
      super.erro = value;
    });
  }

  final _$_saveAsyncAction = AsyncAction('_AccountStore._save');

  @override
  Future<void> _save() {
    return _$_saveAsyncAction.run(() => super._save());
  }

  final _$_AccountStoreActionController =
      ActionController(name: '_AccountStore');

  @override
  void setCPF(String valeu) {
    final _$actionInfo = _$_AccountStoreActionController.startAction(
        name: '_AccountStore.setCPF');
    try {
      return super.setCPF(valeu);
    } finally {
      _$_AccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String valeu) {
    final _$actionInfo = _$_AccountStoreActionController.startAction(
        name: '_AccountStore.setEmail');
    try {
      return super.setEmail(valeu);
    } finally {
      _$_AccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setName(String valeu) {
    final _$actionInfo = _$_AccountStoreActionController.startAction(
        name: '_AccountStore.setName');
    try {
      return super.setName(valeu);
    } finally {
      _$_AccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPhone(String valeu) {
    final _$actionInfo = _$_AccountStoreActionController.startAction(
        name: '_AccountStore.setPhone');
    try {
      return super.setPhone(valeu);
    } finally {
      _$_AccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reset() {
    final _$actionInfo = _$_AccountStoreActionController.startAction(
        name: '_AccountStore.reset');
    try {
      return super.reset();
    } finally {
      _$_AccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
CPF: ${CPF},
email: ${email},
name: ${name},
phone: ${phone},
loading: ${loading},
erro: ${erro},
emailErro: ${emailErro},
nameErro: ${nameErro},
phoneErro: ${phoneErro},
isFormValid: ${isFormValid},
signUpPressed: ${signUpPressed}
    ''';
  }
}
