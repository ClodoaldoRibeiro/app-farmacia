import 'package:flutter/material.dart';

class SessionTile extends StatelessWidget {
  SessionTile({this.title = ""});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 55,
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.grey[800]),
        ),
      ),
    );
  }
}
