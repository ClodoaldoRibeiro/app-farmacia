// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthenticationStore on _AuthenticationStore, Store {
  Computed<bool> _$isCPFValidComputed;

  @override
  bool get isCPFValid =>
      (_$isCPFValidComputed ??= Computed<bool>(() => super.isCPFValid,
              name: '_AuthenticationStore.isCPFValid'))
          .value;
  Computed<bool> _$formValidComputed;

  @override
  bool get formValid =>
      (_$formValidComputed ??= Computed<bool>(() => super.formValid,
              name: '_AuthenticationStore.formValid'))
          .value;
  Computed<Function> _$sendPressedComputed;

  @override
  Function get sendPressed =>
      (_$sendPressedComputed ??= Computed<Function>(() => super.sendPressed,
              name: '_AuthenticationStore.sendPressed'))
          .value;

  final _$cpfAtom = Atom(name: '_AuthenticationStore.cpf');

  @override
  String get cpf {
    _$cpfAtom.reportRead();
    return super.cpf;
  }

  @override
  set cpf(String value) {
    _$cpfAtom.reportWrite(value, super.cpf, () {
      super.cpf = value;
    });
  }

  final _$loadingAtom = Atom(name: '_AuthenticationStore.loading');

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

  final _$errorAtom = Atom(name: '_AuthenticationStore.error');

  @override
  String get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(String value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  final _$_sendAsyncAction = AsyncAction('_AuthenticationStore._send');

  @override
  Future<bool> _send() {
    return _$_sendAsyncAction.run(() => super._send());
  }

  final _$_AuthenticationStoreActionController =
      ActionController(name: '_AuthenticationStore');

  @override
  void setCPF(String value) {
    final _$actionInfo = _$_AuthenticationStoreActionController.startAction(
        name: '_AuthenticationStore.setCPF');
    try {
      return super.setCPF(value);
    } finally {
      _$_AuthenticationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cpf: ${cpf},
loading: ${loading},
error: ${error},
isCPFValid: ${isCPFValid},
formValid: ${formValid},
sendPressed: ${sendPressed}
    ''';
  }
}
