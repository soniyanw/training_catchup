import 'package:firebase_proj/models/values.dart';
import 'package:firebase_proj/service/implement_services.dart';
import 'package:firebase_proj/view_models/changes.dart';
import 'package:firebase_proj/views/apphome.dart';
import 'package:firebase_proj/views/signup.dart';
import 'package:firebase_proj/views/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  Implementation imp = Implementation();
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
                          context.read<MyModel>().assignSIMail(val);
                        },
                        decoration: decorate('E-mail')),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        style: TextStyle(color: Colors.teal),
                        onChanged: (val) {
                          context.read<MyModel>().assignSIPass(val);
                        },
                        decoration: decorate('password')),
                    SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                      onPressed: () {
                        imp.signin(
                            Provider.of<Values>(context, listen: false)
                                .signInMail,
                            Provider.of<Values>(context, listen: false)
                                .signInPass);
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
