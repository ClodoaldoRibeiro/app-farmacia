import 'package:farmacia_app/screens/themes/app_colors.dart';
import 'package:farmacia_app/screens/themes/constants.dart';
import 'package:flutter/material.dart';

class SessionHeader extends StatelessWidget {
  SessionHeader({this.nome});
  final String nome;

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
                  "${nome}",
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
