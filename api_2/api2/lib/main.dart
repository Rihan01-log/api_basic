import 'package:api2/controller/provider.dart';
import 'package:api2/view/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GetPro(),
        )
      ],
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}
