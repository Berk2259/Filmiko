import 'package:flutter/material.dart';
import 'package:filmiko/Screen/Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainScreen(), debugShowCheckedModeBanner: false);
  }
}
