import 'package:flutter/material.dart';

import 'package:qrme/Screens/qrgenerator.dart';
import 'package:qrme/Screens/qrscanner.dart';

class AppBtn extends StatelessWidget {
  AppBtn(
      {super.key,
      required this.btnColor,
      required this.btnText,
      required this.btnFunction,
      required this.img});

  Color btnColor;
  final btnFunction;
  String btnText;
  String img;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: btnFunction,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: btnColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                child: Image.asset(
                  img,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                width: 200,
                child: Center(
                  child: Text(
                    btnText,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
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
