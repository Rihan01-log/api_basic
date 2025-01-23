import 'package:apipokeee/provider.dart';
import 'package:apipokeee/service.dart';
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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<Pokee3Pro>(context, listen: false).getPokee();
        },
      ),
      body: Consumer<Pokee3Pro>(
          builder: (context, value, child) => ListView.builder(
                itemCount: value.data.length,
                itemBuilder: (context, index) {
                  final data = value.data[index];
                  return ListTile(
                    title: Text(data.abilities![index].ability!.name!),
                    subtitle: Text(data.baseexperience.toString()),
                  );
                },
              )),
    );
  }
}
