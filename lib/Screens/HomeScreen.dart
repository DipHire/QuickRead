import 'package:flutter/material.dart';
import 'package:qrme/Screens/QRGenerator.dart';
import 'package:qrme/Screens/QRScanner.dart';
import '../Components/btn.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              AppBtn(
                  btnColor: Colors.redAccent,
                  btnText: 'Scan QR',
                  btnFunction: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QrScanner()),
                    );
                  }),
              SizedBox(
                height: 30,
              ),
              AppBtn(
                  btnColor: Colors.blueAccent,
                  btnText: 'Generate QR',
                  btnFunction: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QrGenerator()),
                    );
                  }),
            ],
          ),
        ),
      )),
    );
  }
}
