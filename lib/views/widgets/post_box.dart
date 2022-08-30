import 'package:firebase_proj/view_models/changes.dart';
import 'package:firebase_proj/views/comments.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostBox extends StatelessWidget {
  final String descrip;
  final String name;
  final String postid;
  final bool isme;
  final String time;
  final Key key;
  PostBox(this.descrip, this.name, this.postid, this.isme, this.time,
      {required this.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
                width: double.infinity,
                color: Colors.teal,
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isme
                        ? Text(
                            name + "(You)",
                            style: TextStyle(color: Colors.white),
                          )
                        : Text(
                            name,
                            style: TextStyle(color: Colors.white),
                          ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          time.split(' ')[0],
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          time.substring(11, time.length - 10),
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                )),
            Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(descrip,
                        style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                            fontSize: 24))),
              ),
            ),
            TextButton(
              onPressed: () {
                context.read<MyModel>().assignPostId(postid);
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Comments()));
              },
              child: Text(
                "Comments",
                style: TextStyle(
                    color: Colors.teal, decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      ),
    );
  }
}
