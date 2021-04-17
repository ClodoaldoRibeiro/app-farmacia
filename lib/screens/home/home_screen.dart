import 'package:farmacia_app/screens/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:farmacia_app/screens/themes/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 65,
              color: AppColors.COR_PRIMARIA,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.search,
                      style: TextStyle(
                          color: Colors.grey[500], fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w600),
                        hintText: 'O que deseja procurar ?',
                        isDense: true,
                        suffixIcon: Icon(
                          Icons.search,
                          size: 24,
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
