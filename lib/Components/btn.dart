import 'package:flutter/material.dart';

import 'package:qrme/Screens/QRGenerator.dart';
import 'package:qrme/Screens/QRScanner.dart';

class AppBtn extends StatelessWidget {
  AppBtn(
      {super.key,
      required this.btnColor,
      required this.btnText,
      required this.btnFunction});

  Color btnColor;
  final btnFunction;
  String btnText;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: btnFunction,
        child: Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            color: btnColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(btnText),
          ),
        ),
      ),
    );
  }
}
// ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => QrScanner()),
//               );
//             },
//             child: Text("Scan QR"),
//           ),
//           ElevatedButton(
//             onPressed: () {
//                Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => QrGenerator()),
//               );
//             },
//             child: Text("Generate QR"),
//           ),
