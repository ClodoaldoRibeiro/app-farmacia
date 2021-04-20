class User {
  String CPF;
  String email;
  String nome;
  String celular;
  String senha;

  User({this.CPF, this.email, this.nome, this.celular, this.senha});

  @override
  String toString() {
    return 'User{CPF: $CPF, email: $email, nome: $nome, celular: $celular, senha: $senha}';
  }
}
