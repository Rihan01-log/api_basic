import 'package:apineseted/controller/provider.dart';
import 'package:apineseted/model/model.dart';
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
    Provider.of<GetPro>(context, listen: false).getUser();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<GetPro>(
        builder: (context, value, child) => ListView.builder(
          itemCount: value.user.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Text('${value.user[index].id}'),
                Text(value.user[index].firstname ?? 'no'),
                Text(value.user[index].lastname ?? 'no'),
                Text(value.user[index].email ?? 'no'),
                Text(value.user[index].birthdate ?? 'no'),
                Divider(),
                Text(value.user[index].login!.uuid!),
                Text(value.user[index].login!.username!),
                Text(value.user[index].login!.password!),
                Text(value.user[index].login!.md5!),
                Text(value.user[index].login!.sha1 ?? 'no'),
                Divider(),
                Text(value.user[index].address!.street ?? 'no'),
                Text(value.user[index].address!.city ?? 'no'),
                Text(value.user[index].address!.zipcode ?? 'no'),
                Text(value.user[index].address!.geo!.lat ?? 'no'),
                Text(value.user[index].address!.geo!.lng ?? 'no'),
              ],
            );
          },
        ),
      ),
    );
  }
}
