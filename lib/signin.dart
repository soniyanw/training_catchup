import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_proj/apphome.dart';
import 'package:firebase_proj/signup.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  String mail = '';
  String pass = '';
  void signin() async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: mail, password: pass);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text("Catch-Up"),
      ),
      body: Center(
        child: Card(
          elevation: 0,
          child: Form(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextFormField(
                      style: TextStyle(color: Colors.teal),
                      onChanged: (val) {
                        mail = val;
                      },
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.teal),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.teal)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.teal)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.teal),
                      onChanged: (val) {
                        pass = val;
                      },
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.teal),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.teal)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.teal)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                      onPressed: () {
                        signin();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AppHome()),
                        );
                      },
                      child: Text(
                        "LOG IN",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.teal,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => Signup()),
                            (Route<dynamic> route) => false,
                          );
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(color: Colors.teal),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
