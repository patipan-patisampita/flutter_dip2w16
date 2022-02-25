import 'package:flutter/material.dart';

import 'contact.dart';
import 'first_screen.dart';
import 'future_screen.dart';
import 'login.dart';
import 'profile.dart';

class HomeScreen extends StatefulWidget {
  static String id = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0 ;
  List pages = [
    //HomeScreen(),
    FirstScreen(),
    ProfileScreen(),
    ContactScren(),
    LoginScreen(),
    FutureScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.indigo,
      //   title: Text("Home"),
      //   centerTitle: true,
      //   actions: [
      //     IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
      //     IconButton(onPressed: () {}, icon: Icon(Icons.search)),
      //   ],
      // ),
      body: pages[_index],
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home", backgroundColor: Colors.indigo),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Profile", backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Contact", backgroundColor: Colors.red),
          BottomNavigationBarItem(icon: Icon(Icons.access_alarms), label: "Login", backgroundColor: Colors.purple),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance), label: "Future", backgroundColor: Colors.teal),
        ],
        onTap: (index){
          setState(() {
            _index = index;
          });
          print(index);
        },
      ),
    );
  }
}
