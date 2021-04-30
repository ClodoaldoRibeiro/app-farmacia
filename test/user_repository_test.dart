import 'package:farmacia_app/application_parse.dart';
import 'package:farmacia_app/models/user.dart';
import 'package:farmacia_app/repositories/user_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  test("Buscar usuário por CPF", () async {
    await ApplicationParse.initializeParse();

    try {
      List<User> users =
          await UserRepository().getUserByCPF('107.695.394-83');

      print('Usuário recuperado: ${users} ');
    } catch (e) {

    }
  });
}
