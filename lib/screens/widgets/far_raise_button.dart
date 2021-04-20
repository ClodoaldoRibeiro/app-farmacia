import 'package:flutter/material.dart';


class FarRaiseButton extends StatelessWidget {

  FarRaiseButton({@required this.child, @required this.pressed });

  final VoidCallback pressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      margin: EdgeInsets.only(top: 12, bottom: 12),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)),
        color: Colors.blue[900],
        child: child,
        textColor: Colors.white,
        disabledColor: Colors.blue.withAlpha(120),
        onPressed: pressed,
      ),
    );
  }
}
