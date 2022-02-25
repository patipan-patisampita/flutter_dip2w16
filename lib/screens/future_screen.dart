import 'package:flutter/material.dart';

class FutureScreen extends StatefulWidget {
  static String id = '/future';

  const FutureScreen({Key? key}) : super(key: key);

  @override
  _FutureScreenState createState() => _FutureScreenState();
}

class _FutureScreenState extends State<FutureScreen> {
  Future<void> getData() async {
    Future.delayed(Duration(seconds: 3), () {
      print("User ID-1");
    }).then((value) {
      Future.delayed(Duration(seconds: 2), () {
        print("Hey Vlademir Putin");
      }).catchError((error) {
        print(error);
      });
    });
    print("Ukrain Country");
  }

  Future<void> getAyncData() async {
    try {
      final userId = await Future.delayed(Duration(seconds: 3), () {
        print("User Id -  1");
        return "Hello ";
      });
      await Future.delayed(Duration(seconds: 2), () {
        print("Hey Vlademir Putin $userId");
        ;
      });
    } catch (e) {
      print(e);
    }
    print("Future Async");
  }

  Future<String> getUserName() async {
    final String user = await Future.delayed(Duration(seconds: 2), () {
      return "Hello Bill Gate";
    });
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                getData();
              },
              child: Text("Future"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                await getAyncData();
                print("Secound Function");
              },
              child: Text("Future Async and Await"),
            ),
            SizedBox(height: 10),
            FutureBuilder(
              future: getUserName(),
              builder: (context,AsyncSnapshot snapshot){
                if(snapshot.hasData){
                  return Text(snapshot.data);
                }
                 return CircularProgressIndicator();
              }
            ),
          ],
        ),
      ),
    );
  }
}
