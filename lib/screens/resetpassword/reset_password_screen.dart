import 'package:farmacia_app/screens/themes/constants.dart';
import 'package:farmacia_app/screens/widgets/far_error_box.dart';
import 'package:farmacia_app/screens/widgets/far_raise_button.dart';
import 'package:farmacia_app/screens/widgets/far_success_box.dart';
import 'package:farmacia_app/stores/reset_password_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ResetPassawordScreen extends StatelessWidget {
  ResetPasswordStore store = ResetPasswordStore();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text("Resgatar senha"),
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
            "Informe seu email e te enviaremos uma nova senha",
            style:
                TextStyle(fontWeight: FontWeight.w600, color: Colors.grey[600]),
          ),
          SizedBox(
            height: 25,
          ),
          Observer(
            builder: (context) {
              return FarSuccessBox(success: store.success);
            },
          ),
          Observer(
            builder: (context) {
              return FarErrorBox(error: store.error);
            },
          ),
          Observer(
            builder: (context) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    enabled: !store.loading,
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
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: FarRaiseButton(
                    child: store.loading
                        ? CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation(Colors.white),
                          )
                        : Text("Solicitar nova senha"),
                    pressed: store.sendPressed),
              );
            },
          ),
        ],
      ),
    );
  }
}
