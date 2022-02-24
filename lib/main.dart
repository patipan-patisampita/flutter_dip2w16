import 'package:flutter/material.dart';

import 'screens/contact.dart';
import 'screens/first_screen.dart';
import 'screens/home.dart';
import 'screens/login.dart';
import 'screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); //1.Create Constructor

  @override //2.Build
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomeScreen(),
      initialRoute: '/',
      routes: {
        '/':(context) => HomeScreen(),
        //HomeScreen.id:(context) => HomeScreen(),
        '/first':(context) => FirstScreen(),
        ProfileScreen.id:(context) => ProfileScreen(),
        ContactScren.id:(context) => ContactScren(),
        LoginScreen.id:(context) => LoginScreen(),
        FirstScreen.id:(context) => FirstScreen(),
      },
    );
  }
}
