class User {
  String id;
  String CPF;
  String email;
  String nome;
  String celular;
  String senha;
  DateTime createdAt;

  User(
      {this.id,
      this.CPF,
      this.email,
      this.nome,
      this.celular,
      this.senha,
      this.createdAt});

  @override
  String toString() {
    return 'User{id: $id, CPF: $CPF, email: $email, nome: $nome, celular: $celular, senha: $senha, createdAt: $createdAt}';
  }
}
