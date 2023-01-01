import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrGenerator extends StatefulWidget {
  const QrGenerator({super.key});

  @override
  State<QrGenerator> createState() => _QrGeneratorState();
}

class _QrGeneratorState extends State<QrGenerator> {
  TextEditingController _editingController =
      TextEditingController(text: 'Enter text');
  var data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Scanner"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(contentPadding: EdgeInsets.all(10)),
              controller: _editingController,
            ),
            ElevatedButton(
              onPressed: (() {
                setState(() {
                  data = _editingController;
                });
              }),
              child: Text('Generate QR'),
            ),
            Center(
              child: QrImage(
                data: '$data',
                version: QrVersions.auto,
                size: 250,
              ),
            )
          ],
        ),
      ),
    );
  }
}
