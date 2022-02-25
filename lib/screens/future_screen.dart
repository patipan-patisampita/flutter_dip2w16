import 'package:flutter/material.dart';

class FutureScreen extends StatefulWidget {
  static String id= '/future';

  const FutureScreen({Key? key}) : super(key: key);

  @override
  _FutureScreenState createState() => _FutureScreenState();
}

class _FutureScreenState extends State<FutureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future"),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
