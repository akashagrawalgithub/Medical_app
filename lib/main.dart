import "package:flutter/material.dart";
import 'package:medical_app/pages/home.dart';

void main() {
  runApp(const medicalApp());
}

class medicalApp extends StatelessWidget {
  const medicalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: HomePage(),
        ),
      ),
    );
  }
}
