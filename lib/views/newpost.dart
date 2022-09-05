import 'package:firebase_proj/models/values.dart';
import 'package:firebase_proj/service/implement_services.dart';
import 'package:firebase_proj/view_models/changes.dart';
import 'package:firebase_proj/views/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewPost extends StatefulWidget {
  const NewPost({Key? key}) : super(key: key);

  @override
  State<NewPost> createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  TextEditingController controll = TextEditingController();
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
          color: Colors.teal[50],
          child: Form(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextField(
                        style: TextStyle(color: Colors.teal),
                        controller: controll,
                        onChanged: (val) {
                          context.read<MyModel>().assignDescrip(val);
                        },
                        decoration: decorate("Type Something...")),
                    SizedBox(
                      height: 10,
                    ),
                    RaisedButton(
                        onPressed: controll.text.isEmpty
                            ? null
                            : () {
                                FocusScope.of(context).unfocus();
                                imp.postsomething(
                                    context.read<MyModel>().state.descrip);
                                controll.clear();
                                Navigator.of(context).pop();
                                setState(() {});
                              },
                        color: Colors.teal,
                        child: Text(
                          "Post",
                          style: TextStyle(color: Colors.white),
                        ))
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
