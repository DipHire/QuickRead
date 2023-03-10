import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qrme/Screens/resultsScreen.dart';
import 'package:qrme/Styles/constants.dart';
import '../Components/overlay.dart';

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
      appBar: AppBar(
        title: Text("QR Scanner"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16.0),
                width: double.infinity,
                decoration: kMainContainer,
                child: FloatingActionButton.extended(
                  heroTag: '1',
                  onPressed: () {},
                  icon: Icon(Icons.flash_on),
                  label: Text("Tourch"),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  MobileScanner(
                    allowDuplicates: true,
                    onDetect: ((barcode, args) {
                      String code = barcode.rawValue ?? '---';
                      if (!isScanned) {
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
                  Positioned.fill(
                    child: Container(
                      decoration: ShapeDecoration(
                        shape: QrScannerOverlayShape(
                          borderColor: Colors.white,
                          borderRadius: 10,
                          borderLength: 20,
                          borderWidth: 5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: kMainContainer,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Scan the Qr Code"),
                    Text("Scanning will be starting automatically"),
                    LinearProgressIndicator(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
