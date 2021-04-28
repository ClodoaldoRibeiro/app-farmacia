// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'singin_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SinginStore on _SinginStore, Store {
  Computed<bool> _$isPasswordVisibilityComputed;

  @override
  bool get isPasswordVisibility => (_$isPasswordVisibilityComputed ??=
          Computed<bool>(() => super.isPasswordVisibility,
              name: '_SinginStore.isPasswordVisibility'))
      .value;
  Computed<String> _$passwordErroComputed;

  @override
  String get passwordErro =>
      (_$passwordErroComputed ??= Computed<String>(() => super.passwordErro,
              name: '_SinginStore.passwordErro'))
          .value;
  Computed<bool> _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_SinginStore.isFormValid'))
          .value;
  Computed<Function> _$signInPressedComputed;

  @override
  Function get signInPressed =>
      (_$signInPressedComputed ??= Computed<Function>(() => super.signInPressed,
              name: '_SinginStore.signInPressed'))
          .value;

  final _$passwordVisibilityAtom =
      Atom(name: '_SinginStore.passwordVisibility');

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

  final _$passwordAtom = Atom(name: '_SinginStore.password');

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

  final _$loadingAtom = Atom(name: '_SinginStore.loading');

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

  final _$erroAtom = Atom(name: '_SinginStore.erro');

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

  final _$signInAsyncAction = AsyncAction('_SinginStore.signIn');

  @override
  Future<void> signIn() {
    return _$signInAsyncAction.run(() => super.signIn());
  }

  final _$_SinginStoreActionController = ActionController(name: '_SinginStore');

  @override
  void togglePasswordVisibility() {
    final _$actionInfo = _$_SinginStoreActionController.startAction(
        name: '_SinginStore.togglePasswordVisibility');
    try {
      return super.togglePasswordVisibility();
    } finally {
      _$_SinginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String valeu) {
    final _$actionInfo = _$_SinginStoreActionController.startAction(
        name: '_SinginStore.setPassword');
    try {
      return super.setPassword(valeu);
    } finally {
      _$_SinginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
passwordVisibility: ${passwordVisibility},
password: ${password},
loading: ${loading},
erro: ${erro},
isPasswordVisibility: ${isPasswordVisibility},
passwordErro: ${passwordErro},
isFormValid: ${isFormValid},
signInPressed: ${signInPressed}
    ''';
  }
}
