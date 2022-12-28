import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qrme/resultsScreen.dart';

const bgColor = Color(0xfffafafa);

class QrScanner extends StatefulWidget {
  const QrScanner({super.key});

  @override
  State<QrScanner> createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  bool isScanned = false;
  void closeSceen() {
    isScanned = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text("QR Scanner"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Scan the Qr Code"),
                  Text("Scanning will be starting automatically"),
                ],
              ),
            ),
            Expanded(
                flex: 4,
                child: Stack(
                  children: [
                    MobileScanner(
                      allowDuplicates: true,
                      onDetect: ((barcode, args) {
                        if (!isScanned) {
                          String code = barcode.rawValue ?? '---';
                          isScanned = true;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultScreen(
                                closeScreen: closeSceen,
                                code: code,
                              ),
                            ),
                          );
                        }
                      }),
                    ),
                  ],
                )),
            Expanded(flex: 4, child: Container(color: bgColor))
          ],
        ),
      ),
    );
  }
}
