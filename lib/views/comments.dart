import 'package:firebase_proj/models/values.dart';
import 'package:firebase_proj/service/implement_services.dart';
import 'package:firebase_proj/view_models/changes.dart';
import 'package:firebase_proj/views/widgets/commentlist.dart';
import 'package:firebase_proj/views/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Comments extends StatefulWidget {
  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  TextEditingController controll = TextEditingController();
  Implementation imp = Implementation();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text("Comments"),
      ),
      body: Column(
        children: [
          Expanded(child: Commentlist()),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: TextField(
                      style: TextStyle(color: Colors.teal),
                      controller: controll,
                      onChanged: (val) {
                        context.read<MyModel>().assignComment(val);
                      },
                      decoration: decorate("Comment Something...")),
                ),
                IconButton(
                    onPressed: controll.text.isEmpty
                        ? null
                        : () {
                            FocusScope.of(context).unfocus();
                            imp.commentsomething(
                                Provider.of<Values>(context, listen: false)
                                        .postId ??
                                    '',
                                Provider.of<Values>(context, listen: false)
                                    .comment);
                            controll.clear();
                            setState(() {});
                          },
                    color: Colors.teal,
                    icon: Icon(Icons.send))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
