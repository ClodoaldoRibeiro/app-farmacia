import 'package:farmacia_app/screens/themes/app_colors.dart';
import 'package:flutter/material.dart';

class FieldSearch extends StatelessWidget {
  Function(String) onChanged;
  FieldSearch({@required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      color: AppColors.COR_PRIMARIA,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: TextFormField(
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.search,
              style: TextStyle(
                  color: Colors.grey[500], fontWeight: FontWeight.w600),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: TextStyle(
                    color: Colors.grey[500], fontWeight: FontWeight.w600),
                hintText: 'O que deseja procurar ?',
                isDense: true,
                suffixIcon: Icon(
                  Icons.search,
                  size: 24,
                ),
              ),
              onChanged: this.onChanged,
            ),
          ),
        ),
      ),
    );
  }
}
