import 'package:flutter/material.dart';
import 'package:petshop/controller/productpro.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Provider.of<Productpro>(context,listen: false).getProduct();
      },),
  appBar: AppBar(),
    );
  }
}