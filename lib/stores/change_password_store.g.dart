// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChangePasswordStore on _ChangePasswordStore, Store {
  Computed<String> _$passwordErroComputed;

  @override
  String get passwordErro =>
      (_$passwordErroComputed ??= Computed<String>(() => super.passwordErro,
              name: '_ChangePasswordStore.passwordErro'))
          .value;
  Computed<String> _$confirmationPasswordErroComputed;

  @override
  String get confirmationPasswordErro => (_$confirmationPasswordErroComputed ??=
          Computed<String>(() => super.confirmationPasswordErro,
              name: '_ChangePasswordStore.confirmationPasswordErro'))
      .value;
  Computed<bool> _$isPasswordVisibilityComputed;

  @override
  bool get isPasswordVisibility => (_$isPasswordVisibilityComputed ??=
          Computed<bool>(() => super.isPasswordVisibility,
              name: '_ChangePasswordStore.isPasswordVisibility'))
      .value;
  Computed<bool> _$isConfirmationPasswordVisibilityComputed;

  @override
  bool get isConfirmationPasswordVisibility =>
      (_$isConfirmationPasswordVisibilityComputed ??= Computed<bool>(
              () => super.isConfirmationPasswordVisibility,
              name: '_ChangePasswordStore.isConfirmationPasswordVisibility'))
          .value;
  Computed<bool> _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_ChangePasswordStore.isFormValid'))
          .value;
  Computed<Function> _$signUpPressedComputed;

  @override
  Function get signUpPressed =>
      (_$signUpPressedComputed ??= Computed<Function>(() => super.signUpPressed,
              name: '_ChangePasswordStore.signUpPressed'))
          .value;

  final _$passwordAtom = Atom(name: '_ChangePasswordStore.password');

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
      Atom(name: '_ChangePasswordStore.confirmationPassword');

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
      Atom(name: '_ChangePasswordStore.passwordVisibility');

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
      Atom(name: '_ChangePasswordStore.confirmationPasswordVisibility');

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

  final _$loadingAtom = Atom(name: '_ChangePasswordStore.loading');

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

  final _$erroAtom = Atom(name: '_ChangePasswordStore.erro');

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

  final _$successAtom = Atom(name: '_ChangePasswordStore.success');

  @override
  String get success {
    _$successAtom.reportRead();
    return super.success;
  }

  @override
  set success(String value) {
    _$successAtom.reportWrite(value, super.success, () {
      super.success = value;
    });
  }

  final _$_saveAsyncAction = AsyncAction('_ChangePasswordStore._save');

  @override
  Future<void> _save() {
    return _$_saveAsyncAction.run(() => super._save());
  }

  final _$_ChangePasswordStoreActionController =
      ActionController(name: '_ChangePasswordStore');

  @override
  void setPassword(String valeu) {
    final _$actionInfo = _$_ChangePasswordStoreActionController.startAction(
        name: '_ChangePasswordStore.setPassword');
    try {
      return super.setPassword(valeu);
    } finally {
      _$_ChangePasswordStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setConfirmationPassword(String valeu) {
    final _$actionInfo = _$_ChangePasswordStoreActionController.startAction(
        name: '_ChangePasswordStore.setConfirmationPassword');
    try {
      return super.setConfirmationPassword(valeu);
    } finally {
      _$_ChangePasswordStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void togglePasswordVisibility() {
    final _$actionInfo = _$_ChangePasswordStoreActionController.startAction(
        name: '_ChangePasswordStore.togglePasswordVisibility');
    try {
      return super.togglePasswordVisibility();
    } finally {
      _$_ChangePasswordStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleconfirmationPasswordVisibility() {
    final _$actionInfo = _$_ChangePasswordStoreActionController.startAction(
        name: '_ChangePasswordStore.toggleconfirmationPasswordVisibility');
    try {
      return super.toggleconfirmationPasswordVisibility();
    } finally {
      _$_ChangePasswordStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reset() {
    final _$actionInfo = _$_ChangePasswordStoreActionController.startAction(
        name: '_ChangePasswordStore.reset');
    try {
      return super.reset();
    } finally {
      _$_ChangePasswordStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
password: ${password},
confirmationPassword: ${confirmationPassword},
passwordVisibility: ${passwordVisibility},
confirmationPasswordVisibility: ${confirmationPasswordVisibility},
loading: ${loading},
erro: ${erro},
success: ${success},
passwordErro: ${passwordErro},
confirmationPasswordErro: ${confirmationPasswordErro},
isPasswordVisibility: ${isPasswordVisibility},
isConfirmationPasswordVisibility: ${isConfirmationPasswordVisibility},
isFormValid: ${isFormValid},
signUpPressed: ${signUpPressed}
    ''';
  }
}
