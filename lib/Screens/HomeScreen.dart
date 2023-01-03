import 'package:flutter/material.dart';
import 'package:qrme/Screens/qrgenerator.dart';
import 'package:qrme/Screens/qrscanner.dart';
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
                  btnColor: Color.fromARGB(255, 28, 28, 28),
                  btnText: 'Scan QR',
                  img: 'images/scan.png',
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
                  btnColor: Color.fromARGB(255, 28, 28, 28),
                  btnText: 'Generate QR',
                  img: 'images/gen.png',
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
