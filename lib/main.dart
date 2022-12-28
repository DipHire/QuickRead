import 'package:flutter/material.dart';
import 'package:qrme/QRScanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "QRME",
      debugShowCheckedModeBanner: false,
      home: QrScanner(),
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.transparent, elevation: 0.0)),
    );
  }
}
