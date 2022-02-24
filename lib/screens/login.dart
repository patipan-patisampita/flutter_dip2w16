import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static String id = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
        backgroundColor: Colors.purple,
      ),
      body: Text("Login Screen"),
    );
  }
}
