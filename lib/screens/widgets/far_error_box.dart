import 'package:flutter/material.dart';

class FarErrorBox extends StatelessWidget {
  FarErrorBox({@required this.error});
  final String error;

  @override
  Widget build(BuildContext context) {
    if (error == null || error.isEmpty) return Container();
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, ),
      decoration: BoxDecoration(
          color: Colors.red[300],
          borderRadius: BorderRadius.all(Radius.circular(15))),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Icon(
            Icons.error_outline,
            color: Colors.white,
            size: 40,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Text(
              'Oops! $error. Por favor, tente novamente.',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

// class MessagePanel extends StatelessWidget {
//   MessagePanel({@required this.error});
//   final String error;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(
//         vertical: 10,
//       ),
//       child: Container(
//         height: 60,
//         decoration: BoxDecoration(
//             color: Colors.red[300],
//             borderRadius: BorderRadius.all(Radius.circular(30))),
//         child: Expanded(child: Text("${error}")),
//       ),
//     );
//   }
// }
