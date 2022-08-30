import 'package:firebase_proj/service/implement_services.dart';
import 'package:firebase_proj/views/newpost.dart';
import 'package:firebase_proj/views/widgets/post.dart';
import 'package:flutter/material.dart';

class AppHome extends StatefulWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  Implementation imp = Implementation();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Blog"),
        actions: [
          IconButton(
              onPressed: () {
                imp.signout();
              },
              icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: Container(
        color: Colors.teal[100],
        child: Column(
          children: [
            Expanded(child: Post()),
            Container(
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewPost()),
                  );
                },
                child: Text(
                  "Post",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.teal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
