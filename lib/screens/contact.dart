import 'package:flutter/material.dart';

class ContactScren extends StatelessWidget {
  static String id = '/contact';
  const ContactScren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Screen"),
      ),
      body: Text("Contact Screen"),
    );
  }
}
