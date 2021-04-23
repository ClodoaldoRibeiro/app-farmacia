import 'package:brasil_fields/brasil_fields.dart';
import 'package:farmacia_app/screens/themes/constants.dart';
import 'package:farmacia_app/screens/widgets/far_raise_button.dart';
import 'package:farmacia_app/stores/signup_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({@required this.cpf}) {
    store.setCPF(cpf);
  }
  final String cpf;

  SignupStore store = SignupStore();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text("Cadastrar"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          Container(
            padding: EdgeInsets.all(16),
            height: size.height * 0.30,
            child: Center(
              child: Image.asset(kIMAGE_LOGO_PNG),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Informe os seus dados para iniciamos",
            style:
                TextStyle(fontWeight: FontWeight.w600, color: Colors.grey[600]),
          ),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: TextFormField(
              keyboardType: TextInputType.number,
              initialValue: store.CPF,
              enabled: false,
              decoration: InputDecoration(
                labelText: "CPF",
                border: const OutlineInputBorder(),
                isDense: true,
              ),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                CpfInputFormatter(),
              ],
              onChanged: (value) {},
            ),
          ),
          Observer(
            builder: (context) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Seu e-mail",
                      errorText: store.emailErro,
                      border: const OutlineInputBorder(),
                      isDense: true,
                    ),
                    onChanged: store.setEmail),
              );
            },
          ),
          Observer(
            builder: (context) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: "Nome completo",
                    errorText: store.nameErro,
                    border: const OutlineInputBorder(),
                    isDense: true,
                  ),
                  onChanged: store.setName,
                ),
              );
            },
          ),
          Observer(
            builder: (context) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: "Telefone celular",
                    errorText: store.phoneErro,
                    border: const OutlineInputBorder(),
                    isDense: true,
                  ),
                  onChanged: store.setPhone,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    TelefoneInputFormatter(),
                  ],
                ),
              );
            },
          ),
          Observer(
            builder: (context) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    errorText: store.passwordErro,
                    border: const OutlineInputBorder(),
                    isDense: true,
                    suffixIcon: IconButton(
                      icon: Icon(store.isPasswordVisibility
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined),
                      onPressed: store.togglePasswordVisibility,
                    ),
                  ),
                  obscureText: true,
                  onChanged: store.setPassword,
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Text(
              "A senha deve conter de 6 a 14 caracteres",
              style: TextStyle(
                  fontWeight: FontWeight.w300, color: Colors.grey[600]),
            ),
          ),
          Observer(
            builder: (context) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Confirme sua senha",
                    errorText: store.confirmationPasswordErro,
                    border: const OutlineInputBorder(),
                    isDense: true,
                    suffixIcon: IconButton(
                      icon: Icon(store.isConfirmationPasswordVisibility
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined),
                      onPressed: store.toggleconfirmationPasswordVisibility,
                    ),
                  ),
                  obscureText: true,
                  onChanged: store.setConfirmationPassword,
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: FarRaiseButton(
              child: Text("Continuar"),
              pressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
