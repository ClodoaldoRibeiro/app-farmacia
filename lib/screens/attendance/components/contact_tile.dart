import 'package:farmacia_app/screens/themes/app_colors.dart';
import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  ContactTile(
      {@required this.icon, @required this.text, @required this.onPressed});
  final IconData icon;
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Icon(
            icon,
            color: AppColors.COR_PRIMARIA,
          ),
          SizedBox(
            width: 12,
          ),
          FlatButton(
            padding: EdgeInsets.zero,
            onPressed: onPressed,
            child: Text(
              "${text}",
              softWrap: true,
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: AppColors.COR_PRIMARIA,
                  decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }
}
