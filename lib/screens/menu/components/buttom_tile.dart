import 'package:farmacia_app/screens/themes/app_colors.dart';
import 'package:flutter/material.dart';

class ButtomTile extends StatelessWidget {
  ButtomTile({this.onChanged, this.titulo, this.valeu});

  final Function(bool) onChanged;
  final String titulo;
  final bool valeu;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "${titulo}",
        style: TextStyle(fontWeight: FontWeight.w700, color: Colors.grey[600]),
      ),
      trailing: Switch(
        value: valeu,
        onChanged: this.onChanged,
      ),
    );
  }
}
