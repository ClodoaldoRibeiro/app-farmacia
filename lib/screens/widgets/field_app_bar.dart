import 'package:farmacia_app/screens/themes/constants.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class FieldAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 22,
            width: 22,
            child: SvgPicture.asset(kIMAGE_LOGO_SVG),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            "Farmácia",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ],
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.shopping_basket_sharp),
          onPressed: () {},
        )
      ],
    );
  }
}
