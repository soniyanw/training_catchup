import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_proj/models/comment.dart';
import 'package:firebase_proj/models/posts.dart';

abstract class AllServices {
  CollectionReference<Map<String, dynamic>> collectionPost =
      FirebaseFirestore.instance.collection('posts');

  final currentuser = FirebaseAuth.instance.currentUser?.uid ?? '';

  CollectionReference<Map<String, dynamic>> collectionComment =
      FirebaseFirestore.instance.collection('comments');

  void signin({String? mail, String? pass});

  void signout();

  void signup({String? name, String? mail, String? pass});

  void postsomething(String? descrip);

  void commentsomething(String postid, String? comment);

  Future<BuiltList<Comment>> getcomments({required String postid});

  Future<BuiltList<Posts>> getposts();
}
