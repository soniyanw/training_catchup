import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_proj/post_box.dart';
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
    Stream<QuerySnapshot<Map<String, dynamic>>> hello = FirebaseFirestore
        .instance
        .collection('posts')
        .orderBy('time', descending: true)
        .snapshots();
    if (hello != null) {
      return StreamBuilder(
          stream: hello,
          builder: (context, AsyncSnapshot<QuerySnapshot> snapShot) {
            if (snapShot.hasData) {
              List<QueryDocumentSnapshot<Object?>> postdata =
                  snapShot.data!.docs;
              return ListView.builder(
                itemCount: postdata.length,
                itemBuilder: (context, index) {
                  return PostBox(
                      postdata[index]['descrip'],
                      postdata[index]['name'],
                      postdata[index]['postid'],
                      postdata[index]['userid'] == currentuser,
                      (postdata[index]['time']).toDate().toString(),
                      key: ValueKey(postdata[index].id));
                },
              );
            } else {
              return Container(
                color: Colors.teal[100],
              );
            }
          });
    } else {
      return Container();
    }
  }
}
