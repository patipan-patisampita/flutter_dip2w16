import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: const Center(
        child: Text("MyApp"),
      ),
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
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/1/18/Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg"),
                ),
              ),
            ),
            ListTile(
              title: const Text("Home",style: TextStyle(color: Colors.amber,fontSize: 15)),
              leading: Icon(Icons.home,color:Colors.indigo,size: 30),
              onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            ListTile(
              title: const Text("Profile"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Contact"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Login"),
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit),
              label: "Profile",
              backgroundColor: Colors.green),
        ],
      ),
    );
  }
}