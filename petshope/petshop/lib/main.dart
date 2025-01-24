import 'package:flutter/material.dart';
import 'package:petshop/controller/cartprovider.dart';
import 'package:petshop/controller/productpro.dart';
import 'package:petshop/view/home.dart';
import 'package:petshop/view/login.dart';
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
          create: (context) => Productpro(),
        ),
        ChangeNotifierProvider(
          create: (context) => Cartprovider(),
        )
      ],
      child: MaterialApp(
        title: 'Pet Shope',
        home: Home(),
      ),
    );
  }
}
