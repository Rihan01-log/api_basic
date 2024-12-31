import 'package:apineseted/controller/provider.dart';
import 'package:apineseted/view/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GetPro(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: Home(),
      ),
    );
  }
}
