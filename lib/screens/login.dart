import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static String id = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value) {
                  if (value == "") {
                    return "Field is required";
                  }
                  return null;
                },
                onSaved: (value){
                  print("Name field is Saved");
                },
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              TextFormField(
                validator: (value) {
                  if (value!.length < 3) {
                    return "Password shoule be more than 3 characters";
                  }
                  return null;
                },
                onSaved: (value){
                  print("Password field is Saved");
                },
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate() == true) {
                      _formkey.currentState!.save();
                      print("Form Submitted Successfully");
                    }
                  },
                  child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
