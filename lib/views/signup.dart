import 'package:firebase_proj/models/values.dart';
import 'package:firebase_proj/service/implement_services.dart';
import 'package:firebase_proj/view_models/changes.dart';
import 'package:firebase_proj/views/apphome.dart';
import 'package:firebase_proj/views/signin.dart';
import 'package:firebase_proj/views/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  Implementation imp = Implementation();
  String sName='';
  String sMail="";
  String sPass='';

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
                    TextField(
                        style: TextStyle(color: Colors.teal),
                        onChanged: (val) {
                          sMail=val;
                          //context.read<MyModel>().assignSUMail(val);
                        },
                        decoration: decorate('E-mail')),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                        style: TextStyle(color: Colors.teal),
                        onChanged: (val) {
                          sPass=val;
                         // context.read<MyModel>().assignSUPass(val);
                        },
                        decoration: decorate('Password')),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                        style: TextStyle(color: Colors.teal),
                        onChanged: (val) {
                          sName=val;
                          //context.read<MyModel>().assignName(val);
                        },
                        decoration: decorate('Name')),
                    SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                      onPressed: () {
                        imp.signup(
                           name:sName,mail:sMail,pass:sPass);
                        setState(() {});
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AppHome()),
                        );
                      },
                      child: Text(
                        "SIGN UP",
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
                            MaterialPageRoute(builder: (context) => Signin()),
                            (Route<dynamic> route) => false,
                          );
                        },
                        child: Text(
                          "Log in",
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
