import 'package:farmacia_app/models/user.dart';
import 'package:farmacia_app/repositories/parse_errors.dart';
import 'package:farmacia_app/repositories/table_keys.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class UserRepository {
  /// Criar usuáriso no Parser Server
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
  //
  // Future<User> loginWithEmail(String email, String password) async {
  //   final parseruser = ParseUser(email, password, null);
  //
  //   final response = await parseruser.login();
  //
  //   if (response.success) {
  //     return mapParseToUser(response.result);
  //   } else {
  //     return Future.error(ParseErrors.getDescription(response.error.code));
  //   }
  // }
  //

  ///Converter o usuário response para um User do sistema.
  User mapParseToUser(ParseUser parseUser) {
    return User(
      id: parseUser.get(keyUserId),
      CPF: parseUser.get(keyUserName),
      nome: parseUser.get(keyUserNomeCompleto),
      email: parseUser.get(keyUserEmail),
      celular: parseUser.get(keyUserPhone),
      senha: parseUser.get(keyUserPassword),
      createdAt: parseUser.get(keyUserCreatedAt),
    );
  }

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
  // Future<void> save(User user) async {
  //   final ParseUser parseUser = await ParseUser.currentUser();
  //
  //   if (parseUser != null) {
  //     parseUser.set<String>(keyUserName, user.nome);
  //     parseUser.set<String>(keyUserPhone, user.phone);
  //     parseUser.set<int>(keyUserType, user.type.index);
  //
  //     if (user.senha != null) {
  //       parseUser.password = user.senha;
  //     }
  //
  //     final response = await parseUser.save();
  //
  //     if (!response.success)
  //       return Future.error(ParseErrors.getDescription(response.error.code));
  //
  //     if (user.senha != null) {
  //       await parseUser.logout();
  //
  //       final loginResponse =
  //           await ParseUser(user.email, user.senha, user.email).login();
  //
  //       if (!loginResponse.success)
  //         return Future.error(ParseErrors.getDescription(response.error.code));
  //     }
  //   }
  // }
}
