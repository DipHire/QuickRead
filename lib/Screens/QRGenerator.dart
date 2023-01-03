import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrme/Styles/constants.dart';

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
        title: const Text("QR Generator"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Container(
                  decoration: kMainContainer,
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _editingController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Text',
                            hintText: 'Enter Text',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.qr_code_2_rounded,
                        ),
                        onPressed: (() {
                          setState(() {
                            data = _editingController;
                          });
                        }),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: kMainContainer,
                  child: Center(
                    child: QrImage(
                      backgroundColor: Colors.white,
                      data: '$data',
                      version: QrVersions.auto,
                      size: 250,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Expanded(
                child: Container(
                  decoration: kMainContainer,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton.extended(
                        heroTag: '1',
                        onPressed: () {},
                        icon: Icon(Icons.download_done_rounded),
                        label: Text("Download"),
                      ),
                      FloatingActionButton.extended(
                        heroTag: '2',
                        onPressed: () {},
                        icon: Icon(Icons.share_rounded),
                        label: Text(" Share "),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
