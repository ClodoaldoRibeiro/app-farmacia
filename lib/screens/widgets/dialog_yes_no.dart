import 'package:flutter/material.dart';

class DialogEysNo extends StatelessWidget {
  DialogEysNo(
      {@required this.title,
      this.content,
      this.onPressedEys,
      this.onPressedNo});
  final String title;
  final String content;
  final VoidCallback onPressedEys;
  final VoidCallback onPressedNo;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('${title}'),
      content: Text('${content}'),
      actions: [
        FlatButton(
            child: Text('Não', style: TextStyle(fontWeight: FontWeight.bold)),
            onPressed: onPressedNo),
        FlatButton(
            child: Text('Sim', style: TextStyle(fontWeight: FontWeight.bold)),
            onPressed: onPressedEys),
      ],
    );
  }
}
