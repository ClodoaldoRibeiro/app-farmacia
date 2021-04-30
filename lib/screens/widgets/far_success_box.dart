import 'package:flutter/material.dart';

class FarSuccessBox extends StatelessWidget {
  FarSuccessBox({@required this.success});
  final String success;

  @override
  Widget build(BuildContext context) {
    if (success == null || success.isEmpty) return Container();
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          color: Colors.green[300],
          borderRadius: BorderRadius.all(Radius.circular(15))),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Icon(
            Icons.mark_email_read_outlined,
            color: Colors.white,
            size: 40,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Text(
              'Parabéns! $success. :)',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
