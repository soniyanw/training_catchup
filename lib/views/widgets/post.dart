import 'package:built_collection/src/list.dart';
import 'package:firebase_proj/service/implement_services.dart';
import 'package:firebase_proj/view_models/changes.dart';
import 'package:firebase_proj/views/widgets/post_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  Implementation imp = Implementation();
  Future<void> method() async {
    await context.read<MyModel>().assignPosts();
  }

  @override
  void initState() {
    method();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    BuiltList? postdata = context.read<MyModel>().state.posts;
    if (postdata == null) {
      return CircularProgressIndicator();
    }
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
  }
}
