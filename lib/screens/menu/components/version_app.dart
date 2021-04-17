import 'package:farmacia_app/screens/themes/constants.dart';
import 'package:flutter/material.dart';

class VersionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return           Container(
      height: 50,
      color: Colors.grey[100],
      child: Center(
        child: Text(
          "${kVERSAO_APP}",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.grey[600],
              fontSize: 16),
        ),
      ),
    );
  }
}
