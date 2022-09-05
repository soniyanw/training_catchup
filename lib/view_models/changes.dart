import 'package:built_collection/src/list.dart';
import 'package:firebase_proj/models/comment.dart';
import 'package:firebase_proj/models/posts.dart';
import 'package:firebase_proj/models/values.dart';
import 'package:firebase_proj/service/implement_services.dart';
import 'package:firebase_proj/service/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:state_notifier/state_notifier.dart';

class Changes extends StatelessWidget {
  const Changes({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<MyModel, Values>(
      create: (c) => MyModel(),
      child: child,
    );
  }
}

class MyModel extends StateNotifier<Values> with LocatorMixin {
  MyModel() : super(Values());
  AllServices imp = Implementation();
  void assignComment(String val) {
    state = state.rebuild((p0) => p0.comment = val);
  }

  void assignDescrip(String val) {
    state = state.rebuild((p0) => p0.descrip = val);
  }

  void assignPostId(String val) {
    state = state.rebuild((p0) => p0.postId = val);
  }

  Future<void> assignComments() async {
    final BuiltList<Comment> a =
        await imp.getcomments(postid: state.postId ?? '');
    state = state.rebuild((p0) {
      p0.comments = a.toBuilder();
    });
  }

  Future<void> assignPosts() async {
    BuiltList<Posts> a = await imp.getposts();
    state = state.rebuild((p0) {
      p0.posts = a.toBuilder();
    });
  }
}
