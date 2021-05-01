import 'package:farmacia_app/screens/themes/constants.dart';
import 'package:farmacia_app/screens/widgets/far_error_box.dart';
import 'package:farmacia_app/screens/widgets/far_raise_button.dart';
import 'package:farmacia_app/screens/widgets/far_success_box.dart';
import 'package:farmacia_app/stores/change_password_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordStore store = ChangePasswordStore();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text("Alterar senha"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          Container(
            padding: EdgeInsets.all(16),
            height: size.height * 0.20,
            child: Center(
              child: Image.asset(kIMAGE_ALTERAR_SENHA_PNG),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Informe uma nova senha",
            style:
                TextStyle(fontWeight: FontWeight.w600, color: Colors.grey[600]),
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
              return FarSuccessBox(success: store.success);
            },
          ),
          Observer(
            builder: (context) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  enabled: !store.loading,
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
                  obscureText: !store.isPasswordVisibility,
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
                  enabled: !store.loading,
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
                  obscureText: !store.isConfirmationPasswordVisibility,
                  onChanged: store.setConfirmationPassword,
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
