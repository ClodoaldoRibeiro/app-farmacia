import 'package:farmacia_app/application_parse.dart';
import 'package:farmacia_app/models/user.dart';
import 'package:farmacia_app/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  setUp(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await ApplicationParse.initializeParse();
  });

  test("Test de incluir um usuário no parse server", () async {

    User novo = User(
        CPF: "107.695.394-83",
        celular: "(87) 98823-8796",
        email: "clodoribeiro38@gmail.com",
        nome: "Clodoaldo Ribeiro Santos",
        senha: "123456");

    // User user = await UserRepository().signUp(novo);

    // print(user);

    expect(UserRepository().signUp(novo), User);
  });
}
