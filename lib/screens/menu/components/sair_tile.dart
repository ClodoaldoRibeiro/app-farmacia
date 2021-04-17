import 'package:farmacia_app/screens/themes/app_colors.dart';
import 'package:flutter/material.dart';

class SairTile extends StatelessWidget {
  SairTile({this.onTap});

  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Sair",
        style: TextStyle(
            fontWeight: FontWeight.w700, color: AppColors.COR_PRIMARIA),
      ),
      leading: Icon(
        Icons.login_rounded,
        color: AppColors.COR_PRIMARIA,
      ),
      onTap: onTap,
    );
  }
}