import 'package:built_collection/src/list.dart';
import 'package:firebase_proj/service/implement_services.dart';
import 'package:firebase_proj/view_models/changes.dart';
import 'package:firebase_proj/views/widgets/comment_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Commentlist extends StatefulWidget {
  @override
  State<Commentlist> createState() => _CommentlistState();
}

class _CommentlistState extends State<Commentlist> {
  Implementation imp = Implementation();
  Future<void> method() async {
    await context.read<MyModel>().assignComments();
  }

  @override
  void initState() {
    method();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    BuiltList? commdata = context.read<MyModel>().state.comments;
    if (commdata == null) {
      return CircularProgressIndicator();
    }
    return ListView.builder(
        itemCount: commdata.length,
        itemBuilder: (context, index) {
          return Commentbox(commdata[index].comment, commdata[index].name,
              commdata[index].userid == imp.currentuser, commdata[index].time,
              key: ValueKey(commdata[index].id));
        });
  }
}
