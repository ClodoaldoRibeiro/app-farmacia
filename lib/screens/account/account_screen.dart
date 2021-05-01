import 'package:brasil_fields/formatter/cpf_input_formatter.dart';
import 'package:brasil_fields/formatter/telefone_input_formatter.dart';
import 'package:farmacia_app/screens/themes/constants.dart';
import 'package:farmacia_app/screens/widgets/far_error_box.dart';
import 'package:farmacia_app/screens/widgets/far_raise_button.dart';
import 'package:farmacia_app/stores/account_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class AccountScreen extends StatelessWidget {
  AccountStore store = AccountStore();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text("Alterar perfil"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          Container(
            padding: EdgeInsets.all(16),
            height: size.height * 0.20,
            child: Center(
              child: Image.asset(kIMAGE_PERFIL_PNG),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Observer(
            builder: (context) {
              return FarErrorBox(error: store.erro);
            },
          ),
          Observer(
            builder: (context) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  enabled: !store.loading,
                  initialValue: store.name,
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
                    enabled: !store.loading,
                    initialValue: store.email,
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
                  keyboardType: TextInputType.phone,
                  enabled: !store.loading,
                  initialValue: store.phone,
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
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: FarRaiseButton(
                  child: store.loading
                      ? CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(Colors.white),
                        )
                      : Text("Salvar"),
                  pressed: store.signUpPressed,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
