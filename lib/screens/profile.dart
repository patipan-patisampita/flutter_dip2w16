import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static String id = '/profile';
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Screen"),
      ),
      body: Text("Profile Screen"),
    );
  }
}
