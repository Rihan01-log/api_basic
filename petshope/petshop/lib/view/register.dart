import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:petshop/model/registermodel.dart';
import 'package:petshop/service/registerandlogin.dart';
import 'package:petshop/view/home.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController namect = TextEditingController();
    TextEditingController username = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: namect,
              decoration: InputDecoration(
                  hintText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            Gap(10),
            TextField(
              controller: username,
              decoration: InputDecoration(
                  hintText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            Gap(10),
            TextField(
              controller: email,
              decoration: InputDecoration(
                  hintText: 'email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            Gap(10),
            TextField(
              controller: password,
              decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            Gap(10),
            ElevatedButton(
                onPressed: () {
                  Registerandlogin register = Registerandlogin();
                  final savedRegister = Registermodel(
                      name: namect.text,
                      username: username.text,
                      password: password.text,
                      email: email.text);
                  register.register(savedRegister);
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                    (route) => false,
                  );
                },
                child: Text('SignIn'))
          ],
        ),
      ),
    );
  }
}
