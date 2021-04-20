import 'package:farmacia_app/modelos/user.dart';
import 'package:farmacia_app/screens/authentication/authentication_screen.dart';
import 'package:farmacia_app/screens/themes/app_colors.dart';
import 'package:farmacia_app/screens/themes/constants.dart';
import 'package:farmacia_app/screens/widgets/far_raise_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SessionHeader extends StatelessWidget {
  SessionHeader({this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return user != null ? SessionLogin(user: user) : SessionSingin();
  }
}

class SessionLogin extends StatelessWidget {
  SessionLogin({this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Row(
        children: [
          Container(
            child: Image.asset(
              kIMAGE_PERFIL_PNG,
            ),
            height: 80,
            width: 80,
            //color: Colors.blue,
            margin: EdgeInsets.symmetric(horizontal: 20),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${user.nome}",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.black54),
                ),
                FlatButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  child: Text(
                    "Alterar perfil",
                    softWrap: true,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                      color: AppColors.COR_PALLETA,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SessionSingin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Container(
                child: Image.asset(
                  kIMAGE_PERFIL_PNG,
                ),
                height: 80,
                width: 80,
                //color: Colors.blue,
                margin: EdgeInsets.symmetric(horizontal: 20),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bem-vindo",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "ao app farmácia",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: FarRaiseButton(
              child: Text(
                "Cadastrar ou entrar",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              pressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => AuthenticationScreen()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
