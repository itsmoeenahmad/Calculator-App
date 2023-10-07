import 'package:flutter/material.dart';
import 'package:responsive_calculator_app/Home_Page.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator App",
      home: home_page(),
    );
  }
}
