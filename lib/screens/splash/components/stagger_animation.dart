import 'package:flutter/material.dart';
import 'package:farmacia_app/screens/themes/constants.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimation({@required this.controller})
      : containerGrow =
            CurvedAnimation(parent: controller, curve: Curves.bounceOut);

  final Animation<double> containerGrow;

  Widget _builderAnimated(BuildContext context, Widget child) {
    return Center(
      child: Container(
        width: containerGrow.value * 150,
        height: containerGrow.value * 150,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(kIMAGE_LOGO_PNG),
              fit: BoxFit.cover,
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: controller,
        builder: _builderAnimated,
      ),
    );
  }
}
