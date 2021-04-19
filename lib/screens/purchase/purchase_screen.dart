import 'package:farmacia_app/screens/widget/field_app_bar.dart';
import 'package:farmacia_app/screens/widget/field_search.dart';
import 'package:flutter/material.dart';

class PurchaseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: FieldAppBar(),
        preferredSize: Size(double.infinity, 56),
      ),
      body: Container(
        child: Column(
          children: [
            FieldSearch(
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
