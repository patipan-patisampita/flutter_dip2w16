import 'package:flutter/material.dart';

import 'contact.dart';
import 'first_screen.dart';
import 'home.dart';
import 'login.dart';
import 'profile.dart';

class FirstScreen extends StatelessWidget {
  static String id = '/first';
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Center(child: Text("First Screen")),
      drawer: Drawer(
        child: ListView(
          children: [
            const SizedBox(
              width: double.infinity,
              child: UserAccountsDrawerHeader(
                accountName: Text("Mark Zakerberg"),
                accountEmail: Text("mark@facebok.com"),
                currentAccountPicture: CircleAvatar(
                  // child: Icon(Icons.android),
                  backgroundImage: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/1/18/Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg"),
                ),
              ),
            ),
            ListTile(
              title: const Text("Home", style: TextStyle(color: Colors.amber, fontSize: 15)),
              leading: Icon(Icons.home, color: Colors.indigo, size: 30),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            ListTile(
              title: const Text("Profile", style: TextStyle(color: Colors.indigo, fontSize: 15)),
              leading: Icon(Icons.ac_unit, color: Colors.indigo, size: 30),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
            ),
            ListTile(
              title: const Text("Contact", style: TextStyle(color: Colors.indigo, fontSize: 15)),
              leading: Icon(Icons.call, color: Colors.indigo, size: 30),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ContactScren()));
              },
            ),
            ListTile(
              title: const Text("Login", style: TextStyle(color: Colors.indigo, fontSize: 15)),
              leading: Icon(Icons.call, color: Colors.indigo, size: 30),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
