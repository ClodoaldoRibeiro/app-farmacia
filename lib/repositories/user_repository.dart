import 'package:farmacia_app/modelos/user.dart';

class UserRepository {
  Future<User> currentUser() async {
    return await null;

    return await User(
        CPF: "107.695.394-83",
        nome: "Clodoaldo Ribeiro",
        email: "clodoribeiro@gmail.com",
        celular: "87 98823-8796");
  }

  Future<void> logout() async {}
}
