import 'package:api_basic/controller/provider.dart';
import 'package:api_basic/view/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EmployeeProvider(),
      child: MaterialApp(
        home: EmployeeScreen(),
      ),
    );
  }
}
