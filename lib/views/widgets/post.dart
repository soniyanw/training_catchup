import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_proj/models/posts.dart';
import 'package:firebase_proj/service/implement_services.dart';
import 'package:firebase_proj/views/widgets/post_box.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  Implementation imp = Implementation();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
        future: imp.collectionPost.get(),
        builder: (_, snapshot) {
          if (snapshot.hasError) return Text('Error = ${snapshot.error}');

          if (snapshot.hasData) {
            final List<QueryDocumentSnapshot<Map<String, dynamic>>> data =
                snapshot.data!.docs;
            final postdata = [];

            data.forEach((element) {
              postdata.add(Posts.fromJson(element.data()));
            });
            return ListView.builder(
              itemCount: postdata.length,
              itemBuilder: (context, index) {
                return PostBox(
                    postdata[index].descrip,
                    postdata[index].name,
                    postdata[index].postid,
                    postdata[index].userid == imp.currentuser,
                    (postdata[index].time),
                    key: ValueKey(postdata[index].postid));
              },
            );
          } else {
            return Container(color: Colors.teal[100]);
          }
        });
  }
}
