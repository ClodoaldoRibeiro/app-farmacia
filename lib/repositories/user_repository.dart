import 'package:farmacia_app/models/user.dart';
import 'package:farmacia_app/repositories/parse_errors.dart';
import 'package:farmacia_app/repositories/table_keys.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class UserRepository {
  /// Cria um usuário no Parser Server
  Future<User> signUp(User user) async {
    ParseUser parseUser = ParseUser(user.CPF, user.senha, user.email);
    parseUser.set<String>(keyUserNomeCompleto, user.nome);
    parseUser.set<String>(keyUserPhone, user.celular);

    final response = await parseUser.signUp();

    if (response.success) {
      return mapParseToUser(response.result);
    } else {
      return Future.error(ParseErrors.getDescription(response.error.code));
    }
  }

  Future<User> loginWithEmail(String cpf, String password) async {
    final parseruser = ParseUser(cpf, password, null);
    final response = await parseruser.login();

    if (response.success) {
      return mapParseToUser(response.result);
    } else {
      return Future.error(ParseErrors.getDescription(response.error.code));
    }
  }

  ///Verifica se existe usuário cadastrado para o CPF informado
  Future<List<User>> existingAccount(String CPF) async {
    try {
      final QueryBuilder<ParseObject> queryBuilder =
          QueryBuilder<ParseObject>(ParseObject(keyUserTable));
      queryBuilder.whereEqualTo(keyUserName, CPF);

      final response = await queryBuilder.query();

      if (response.success && response.results != null) {
        return response.results.map((po) => mapParseToUser(po)).toList();
      } else if (response.success && response.results == null) {
        return [];
      } else {
        return Future.error(ParseErrors.getDescription(response.error.code));
      }
    } catch (e) {
      return Future.error("Falha da conecxão");
    }
  }

  //

  ///Converter o usuário response para um User do sistema.
  User mapParseToUser(ParseObject object) {
    return User(
      id: object.objectId,
      CPF: object.get(keyUserName),
      nome: object.get(keyUserNomeCompleto),
      email: object.get(keyUserEmail),
      celular: object.get(keyUserPhone),
      senha: object.get(keyUserPassword),
      // createdAt: parseUser.get(keyUserCreatedAt),
    );
  }

  /// Pega o usuário que está ativo para o dispositivo no parser server
  Future<User> currentUser() async {
    final parseUser = await ParseUser.currentUser();
    if (parseUser != null) {
      final response =
          await ParseUser.getCurrentUserFromServer(parseUser.sessionToken);
      if (response.success) {
        return mapParseToUser(response.result);
      } else {
        await parseUser.logout();
      }
    }
    return null;
  }

  /// Faz o logoff no sitema do parser server
  Future<void> logout() async {
    final ParseUser currentUser = await ParseUser.currentUser();
    await currentUser.logout();
  }

  // Future<User> doUserResetPassword(String email) async {
  //   final parseruser = ParseUser(null, null, email);
  //
  //   final response = await parseruser.requestPasswordReset();
  //
  //   if (response.success) {
  //     return mapParseToUser(response.result);
  //   } else {
  //     return Future.error(ParseErrors.getDescription(response.error.code));
  //   }
  // }
  //
  Future<void> save(User user) async {
    final ParseUser parseUser = await ParseUser.currentUser();

    if (parseUser != null) {
      parseUser.set<String>(keyUserName, user.nome);
      parseUser.set<String>(keyUserPhone, user.celular);

      if (user.senha != null) {
        parseUser.password = user.senha;
      }

      final response = await parseUser.save();

      if (!response.success)
        return Future.error(ParseErrors.getDescription(response.error.code));

      if (user.senha != null) {
        await parseUser.logout();

        final loginResponse =
            await ParseUser(user.email, user.senha, user.email).login();

        if (!loginResponse.success)
          return Future.error(ParseErrors.getDescription(response.error.code));
      }
    }
  }
}
