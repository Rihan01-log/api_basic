import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:petshop/model/loginmodel.dart';
import 'package:petshop/service/registerandlogin.dart';
import 'package:petshop/view/home.dart';
import 'package:petshop/view/register.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.home),
                  hintText: 'username',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            Gap(10),
            TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    hintText: 'password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)))),
            ElevatedButton(
                onPressed: () {
                  Registerandlogin login = Registerandlogin();
                  final saveEdLogin = Loginmodel(
                    username: name.text,
                    password: password.text,
                  );
                  login.loginUser(saveEdLogin);
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                    (route) => false,
                  );
                },
                child: Text('login')),
            Gap(10),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Register(),
                    ));
              },
              child: Text('SignUp'),
            )
          ],
        ),
      ),
    );
  }
}
