import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    final currentuser = FirebaseAuth.instance.currentUser?.uid ?? '';
    CollectionReference<Map<String, dynamic>> collection =
        FirebaseFirestore.instance.collection('posts');
    return Container();
    /*return FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      future: collection.doc(currentuser).get(),
      builder: (_, snapshot) {
        if (snapshot.hasError) return Text('Error = ${snapshot.error}');

        if (snapshot.hasData) {
          final Map<String, dynamic>? data = snapshot.data!.data();
          final post = Posts.fromJson(data ?? {});
          return PostBox(post.descrip, post.name, post.postid,
              post.userid == currentuser, post.time,
              key: ValueKey(post.postid));
        }

        return Container(color: Colors.teal[100]);
      },
    )*/
    ;
  }
}
