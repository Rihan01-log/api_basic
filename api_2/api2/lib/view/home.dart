import 'package:api2/controller/provider.dart';
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
    Future.microtask(() {
      Provider.of<GetPro>(context, listen: false).fetchItems();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<GetPro>(
        builder: (context, value, child) => ListView.builder(
          itemCount: value.getDetails.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${value.getDetails[index].id}'),
                Text(value.getDetails[index].firstname ?? 'no'),
                Text(value.getDetails[index].lastname ?? 'no'),
                Text(value.getDetails[index].email ?? 'no'),
              ],
            );
          },
        ),
      ),
    );
  }
}
