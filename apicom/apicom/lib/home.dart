import 'package:apicom/provider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    Provider.of<Poke>(context, listen: false).getPokee();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Poke>(
        builder: (context, value, child) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(value.user[0].effect ?? 'nodata'),
            Text(value.user[1].effect ?? 'no'),
            Text(value.user[1].language!.name ?? 'no'),
            Text(value.user[1].language!.url ?? 'no'),
            Text(value.user[0].shorteffect!),
            
          ],
        ),
      ),
    );
  }
}
