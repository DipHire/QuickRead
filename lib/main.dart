import 'package:flutter/material.dart';
import 'package:qrme/Screens/HomeScreen.dart';
import 'package:qrme/Screens/qrscanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "QRME",
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(), 
      // theme: ThemeData(
      //     appBarTheme: AppBarTheme(color: Colors.transparent, elevation: 0.0)),
    );
  }
}
