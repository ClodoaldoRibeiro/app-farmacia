import 'package:farmacia_app/screens/themes/app_colors.dart';
import 'package:flutter/material.dart';

class MenuTile extends StatelessWidget {
  MenuTile({this.titulo, this.icon, this.onTap});
  final IconData icon;
  final String titulo;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "${titulo}",
        style: TextStyle(
            fontWeight: FontWeight.w700, color: Colors.grey[600]),
      ),
      leading: Icon(
        icon,
        color: AppColors.COR_PRIMARIA,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: AppColors.COR_PRIMARIA,
        size: 15,
      ),
      onTap: onTap,
    );
  }
}
