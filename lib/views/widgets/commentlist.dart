import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_proj/models/comment.dart';
import 'package:firebase_proj/models/values.dart';
import 'package:firebase_proj/service/implement_services.dart';
import 'package:firebase_proj/views/widgets/comment_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Commentlist extends StatefulWidget {
  @override
  State<Commentlist> createState() => _CommentlistState();
}

class _CommentlistState extends State<Commentlist> {
  Implementation imp = Implementation();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
        future: imp.collectionComment.get(),
        builder: (_, snapshot) {
          if (snapshot.hasError) return Text('Error = ${snapshot.error}');

          if (snapshot.hasData) {
            final List<QueryDocumentSnapshot<Map<String, dynamic>>> data =
                snapshot.data!.docs;
            final commdata = [];

            data.forEach((element) {
              commdata.add(Comment.fromJson(element.data()));
            });
            return ListView.builder(
              itemCount: commdata.length,
              itemBuilder: (context, index) {
                if (commdata[index].postid == context.watch<Values>().postId) {
                  return Commentbox(
                      commdata[index].comment,
                      commdata[index].name,
                      commdata[index].userid == imp.currentuser,
                      commdata[index].time,
                      key: ValueKey(commdata[index].id));
                } else {
                  return Container(
                    height: 0,
                    width: 0,
                  );
                }
              },
            );
          } else {
            return Container(
              color: Colors.teal[100],
            );
          }
        });
  }
}
