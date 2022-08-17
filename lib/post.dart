import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_proj/post_box.dart';
import 'package:firebase_proj/posts.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    final currentuser = FirebaseAuth.instance.currentUser?.uid;
    CollectionReference<Map<String, dynamic>> collection =
        FirebaseFirestore.instance.collection('posts');
    return FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
        future: collection.get(),
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
                    postdata[index].userid == currentuser,
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
