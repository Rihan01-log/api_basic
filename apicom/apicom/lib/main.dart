import 'package:apicom/home.dart';
import 'package:apicom/provider.dart';
import 'package:apicom/service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
    create: (context) => Poke(),
      child: MaterialApp(
        title: 'Flutter Demo',
        home: Home(),
      ),
    );
  }
}
