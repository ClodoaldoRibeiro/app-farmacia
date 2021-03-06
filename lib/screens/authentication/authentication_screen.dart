import 'package:brasil_fields/brasil_fields.dart';
import 'package:farmacia_app/screens/signup/signup_screen.dart';
import 'package:farmacia_app/screens/singin/singin_screen.dart';
import 'package:farmacia_app/screens/themes/app_colors.dart';
import 'package:farmacia_app/screens/themes/constants.dart';
import 'package:farmacia_app/screens/widgets/far_raise_button.dart';
import 'package:farmacia_app/stores/authentication_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class AuthenticationScreen extends StatelessWidget {
  AuthenticationStore store = AuthenticationStore();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.close_rounded,
            color: AppColors.COR_PRIMARIA,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
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
            "Insira o seu CPF para iniciamos a nossa experiência no app da Farmácia",
            style:
                TextStyle(fontWeight: FontWeight.w600, color: Colors.grey[600]),
          ),
          SizedBox(
            height: 40,
          ),
          Observer(
            builder: (context) {
              return TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "CPF",
                    hintText: "Informe seu CPF",
                    border: const OutlineInputBorder(),
                    isDense: true,
                    errorText: store.cpfError),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  CpfInputFormatter(),
                ],
                onChanged: store.setCPF,
              );
            },
          ),
          SizedBox(
            height: 15,
          ),
          Observer(
            builder: (context) {
              return FarRaiseButton(
                child: store.loading
                    ? CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                      )
                    : Text("Continuar"),
                pressed: store.formValid
                    ? () async {
                        bool cadastrado = await store.existingAccount();

                        if (cadastrado) {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SingInScreen(
                              cpf: store.cpf,
                            ),
                          ));
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignupScreen(
                              cpf: store.cpf,
                            ),
                          ));
                        }
                      }
                    : null,
              );
            },
          )
        ],
      ),
    );
  }
}
