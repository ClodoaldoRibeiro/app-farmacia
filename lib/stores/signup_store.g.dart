// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignupStore on _SignupStore, Store {
  Computed<String> _$emailErroComputed;

  @override
  String get emailErro =>
      (_$emailErroComputed ??= Computed<String>(() => super.emailErro,
              name: '_SignupStore.emailErro'))
          .value;
  Computed<String> _$nameErroComputed;

  @override
  String get nameErro => (_$nameErroComputed ??=
          Computed<String>(() => super.nameErro, name: '_SignupStore.nameErro'))
      .value;
  Computed<String> _$phoneErroComputed;

  @override
  String get phoneErro =>
      (_$phoneErroComputed ??= Computed<String>(() => super.phoneErro,
              name: '_SignupStore.phoneErro'))
          .value;
  Computed<String> _$passwordErroComputed;

  @override
  String get passwordErro =>
      (_$passwordErroComputed ??= Computed<String>(() => super.passwordErro,
              name: '_SignupStore.passwordErro'))
          .value;
  Computed<String> _$confirmationPasswordErroComputed;

  @override
  String get confirmationPasswordErro => (_$confirmationPasswordErroComputed ??=
          Computed<String>(() => super.confirmationPasswordErro,
              name: '_SignupStore.confirmationPasswordErro'))
      .value;
  Computed<bool> _$isPasswordVisibilityComputed;

  @override
  bool get isPasswordVisibility => (_$isPasswordVisibilityComputed ??=
          Computed<bool>(() => super.isPasswordVisibility,
              name: '_SignupStore.isPasswordVisibility'))
      .value;
  Computed<bool> _$isConfirmationPasswordVisibilityComputed;

  @override
  bool get isConfirmationPasswordVisibility =>
      (_$isConfirmationPasswordVisibilityComputed ??= Computed<bool>(
              () => super.isConfirmationPasswordVisibility,
              name: '_SignupStore.isConfirmationPasswordVisibility'))
          .value;
  Computed<bool> _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_SignupStore.isFormValid'))
          .value;
  Computed<Function> _$signUpPressedComputed;

  @override
  Function get signUpPressed =>
      (_$signUpPressedComputed ??= Computed<Function>(() => super.signUpPressed,
              name: '_SignupStore.signUpPressed'))
          .value;

  final _$CPFAtom = Atom(name: '_SignupStore.CPF');

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

  final _$emailAtom = Atom(name: '_SignupStore.email');

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

  final _$nameAtom = Atom(name: '_SignupStore.name');

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

  final _$phoneAtom = Atom(name: '_SignupStore.phone');

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

  final _$passwordAtom = Atom(name: '_SignupStore.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$confirmationPasswordAtom =
      Atom(name: '_SignupStore.confirmationPassword');

  @override
  String get confirmationPassword {
    _$confirmationPasswordAtom.reportRead();
    return super.confirmationPassword;
  }

  @override
  set confirmationPassword(String value) {
    _$confirmationPasswordAtom.reportWrite(value, super.confirmationPassword,
        () {
      super.confirmationPassword = value;
    });
  }

  final _$passwordVisibilityAtom =
      Atom(name: '_SignupStore.passwordVisibility');

  @override
  bool get passwordVisibility {
    _$passwordVisibilityAtom.reportRead();
    return super.passwordVisibility;
  }

  @override
  set passwordVisibility(bool value) {
    _$passwordVisibilityAtom.reportWrite(value, super.passwordVisibility, () {
      super.passwordVisibility = value;
    });
  }

  final _$confirmationPasswordVisibilityAtom =
      Atom(name: '_SignupStore.confirmationPasswordVisibility');

  @override
  bool get confirmationPasswordVisibility {
    _$confirmationPasswordVisibilityAtom.reportRead();
    return super.confirmationPasswordVisibility;
  }

  @override
  set confirmationPasswordVisibility(bool value) {
    _$confirmationPasswordVisibilityAtom
        .reportWrite(value, super.confirmationPasswordVisibility, () {
      super.confirmationPasswordVisibility = value;
    });
  }

  final _$loadingAtom = Atom(name: '_SignupStore.loading');

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

  final _$erroAtom = Atom(name: '_SignupStore.erro');

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

  final _$signUpAsyncAction = AsyncAction('_SignupStore.signUp');

  @override
  Future<void> signUp() {
    return _$signUpAsyncAction.run(() => super.signUp());
  }

  final _$_SignupStoreActionController = ActionController(name: '_SignupStore');

  @override
  void setCPF(String valeu) {
    final _$actionInfo =
        _$_SignupStoreActionController.startAction(name: '_SignupStore.setCPF');
    try {
      return super.setCPF(valeu);
    } finally {
      _$_SignupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String valeu) {
    final _$actionInfo = _$_SignupStoreActionController.startAction(
        name: '_SignupStore.setEmail');
    try {
      return super.setEmail(valeu);
    } finally {
      _$_SignupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setName(String valeu) {
    final _$actionInfo = _$_SignupStoreActionController.startAction(
        name: '_SignupStore.setName');
    try {
      return super.setName(valeu);
    } finally {
      _$_SignupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPhone(String valeu) {
    final _$actionInfo = _$_SignupStoreActionController.startAction(
        name: '_SignupStore.setPhone');
    try {
      return super.setPhone(valeu);
    } finally {
      _$_SignupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String valeu) {
    final _$actionInfo = _$_SignupStoreActionController.startAction(
        name: '_SignupStore.setPassword');
    try {
      return super.setPassword(valeu);
    } finally {
      _$_SignupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setConfirmationPassword(String valeu) {
    final _$actionInfo = _$_SignupStoreActionController.startAction(
        name: '_SignupStore.setConfirmationPassword');
    try {
      return super.setConfirmationPassword(valeu);
    } finally {
      _$_SignupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void togglePasswordVisibility() {
    final _$actionInfo = _$_SignupStoreActionController.startAction(
        name: '_SignupStore.togglePasswordVisibility');
    try {
      return super.togglePasswordVisibility();
    } finally {
      _$_SignupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleconfirmationPasswordVisibility() {
    final _$actionInfo = _$_SignupStoreActionController.startAction(
        name: '_SignupStore.toggleconfirmationPasswordVisibility');
    try {
      return super.toggleconfirmationPasswordVisibility();
    } finally {
      _$_SignupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
CPF: ${CPF},
email: ${email},
name: ${name},
phone: ${phone},
password: ${password},
confirmationPassword: ${confirmationPassword},
passwordVisibility: ${passwordVisibility},
confirmationPasswordVisibility: ${confirmationPasswordVisibility},
loading: ${loading},
erro: ${erro},
emailErro: ${emailErro},
nameErro: ${nameErro},
phoneErro: ${phoneErro},
passwordErro: ${passwordErro},
confirmationPasswordErro: ${confirmationPasswordErro},
isPasswordVisibility: ${isPasswordVisibility},
isConfirmationPasswordVisibility: ${isConfirmationPasswordVisibility},
isFormValid: ${isFormValid},
signUpPressed: ${signUpPressed}
    ''';
  }
}
