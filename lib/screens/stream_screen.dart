import 'dart:async';

import 'package:flutter/material.dart';

class StreamScreen extends StatelessWidget {
  static String id = "/Stream";
  //const StreamScreen({Key? key}) : super(key: key);
  final StreamController streamController =
      StreamController(); //1.create new Stream controller

  void streamData() async {
    //3.Listening to the stream
    streamController.stream.listen((data) {
      print(data);
    });
    //2.Add Data to  the stream
    for (int i = 0; i < 4; i++) {
      streamController.add("You get  a message");
      await Future.delayed(Duration(seconds: 2), () {
        print("read");
      });
    }
  }

  Stream myStrea() async* {
    for (var i = 0; i < 10; i++) {
      yield i;
      await Future.delayed(Duration(seconds: 2));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stream"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                streamData();
              },
              child: Text("Click Opeb Stream"),
            ),
            SizedBox(height: 10),
            StreamBuilder(
              stream: myStrea(),
              builder: (contex,AsyncSnapshot snapshot){
                if(snapshot.hasData){
                  return Text(snapshot.data.toString());
                }
                return Center(child: CircularProgressIndicator());
              },
            )
          ],
        ),
      ),
    );
  }
}
