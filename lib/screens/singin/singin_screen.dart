import 'package:brasil_fields/formatter/cpf_input_formatter.dart';
import 'package:farmacia_app/screens/resetpassword/reset_password.dart';
import 'package:farmacia_app/screens/themes/app_colors.dart';
import 'package:farmacia_app/screens/themes/constants.dart';
import 'package:farmacia_app/screens/widgets/far_error_box.dart';
import 'package:farmacia_app/screens/widgets/far_raise_button.dart';
import 'package:farmacia_app/stores/singin_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SingInScreen extends StatelessWidget {
  SingInScreen({@required this.cpf});

  final String cpf;

  final SinginStore store = SinginStore();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text("Entrar"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          Container(
            padding: EdgeInsets.all(16),
            height: size.height * 0.22,
            child: Center(
              child: Image.asset(kIMAGE_LOGO_PNG),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Informe os seus dados para entrar no app",
            style:
                TextStyle(fontWeight: FontWeight.w600, color: Colors.grey[600]),
          ),
          SizedBox(
            height: 25,
          ),
          Observer(
            builder: (context) {
              return FarErrorBox(error: "");
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: TextFormField(
              keyboardType: TextInputType.number,
              initialValue: cpf,
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
                  keyboardType: TextInputType.name,
                  enabled: !store.loading,
                  decoration: InputDecoration(
                    labelText: "Sua senha",
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
                  obscureText: !store.isPasswordVisibility,
                  onChanged: store.setPassword,
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
                      : Text("Continuar"),
                  pressed: store.signInPressed,
                ),
              );
            },
          ),
          FlatButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ResetPassaword(),
              ));
            },
            child: Text(
              "Não lembro a minha senha",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: AppColors.COR_PRIMARIA,
                  fontSize: 14,
                  decoration: TextDecoration.underline),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
