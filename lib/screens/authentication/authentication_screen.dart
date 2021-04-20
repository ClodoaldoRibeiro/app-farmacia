import 'package:farmacia_app/screens/themes/app_colors.dart';
import 'package:farmacia_app/screens/themes/constants.dart';
import 'package:farmacia_app/screens/widgets/far_raise_button.dart';
import 'package:flutter/material.dart';

class AuthenticationScreen extends StatelessWidget {
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
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "CPF",
              hintText: "Informe seu CPF",
              border: const OutlineInputBorder(),
              isDense: true,
            ),
            onChanged: (value) {},
          ),
          SizedBox(
            height: 15,
          ),
          FarRaiseButton(
              child: Text(
                "Continuar",
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              pressed: () {})
        ],
      ),
    );
  }
}
