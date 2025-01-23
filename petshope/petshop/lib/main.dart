import 'package:flutter/material.dart';
import 'package:petshop/view/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Shope',
      home: Login(),
    );
  }
}
