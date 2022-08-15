import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Comments extends StatefulWidget {
  final String postid;
  Comments({required this.postid});

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  String comment = '';
  var controll = TextEditingController();
  void commentsomething(String postid) async {
    FocusScope.of(context).unfocus();
    final uidd = await FirebaseAuth.instance.currentUser!.uid;
    final data =
        await FirebaseFirestore.instance.collection('users').doc(uidd).get();
    await FirebaseFirestore.instance.collection('comments').doc().set({
      "comment": comment,
      "postid": postid,
      "userid": data['id'],
      'name': data['name'],
      'time': Timestamp.now()
    });
    controll.clear();
  }

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
          Expanded(child: Commentlist(postid: widget.postid)),
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
                        setState(() {
                          comment = val;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: "Comment Something...",
                        labelStyle: TextStyle(color: Colors.teal),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.teal)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.teal)),
                      )),
                ),
                IconButton(
                    onPressed: controll.text.isEmpty
                        ? null
                        : () {
                            commentsomething(widget.postid);

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

class Commentlist extends StatefulWidget {
  final String postid;
  Commentlist({required this.postid});
  @override
  State<Commentlist> createState() => _CommentlistState();
}

class _CommentlistState extends State<Commentlist> {
  @override
  Widget build(BuildContext context) {
    final currentuser = FirebaseAuth.instance.currentUser?.uid ?? '';
    Stream<QuerySnapshot<Map<String, dynamic>>> hello = FirebaseFirestore
        .instance
        .collection('comments')
        .orderBy('time', descending: true)
        .snapshots();
    if (hello != null) {
      return StreamBuilder(
          stream: hello,
          builder: (context, AsyncSnapshot<QuerySnapshot> snapShot) {
            if (snapShot.hasData) {
              List<QueryDocumentSnapshot<Object?>> commentdata =
                  snapShot.data!.docs;
              return ListView.builder(
                  itemCount: commentdata.length,
                  itemBuilder: (context, index) {
                    if (commentdata[index]['postid'] == widget.postid) {
                      return Commentbox(
                          commentdata[index]['comment'],
                          commentdata[index]['name'],
                          commentdata[index]['userid'] == currentuser,
                          (commentdata[index]['time']).toDate().toString(),
                          key: ValueKey(commentdata[index].id));
                    } else {
                      return Container(
                        height: 0,
                        width: 0,
                      );
                    }
                  });
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

class Commentbox extends StatelessWidget {
  final String comment;
  final String name;
  final bool isme;
  final String time;
  final Key key;
  Commentbox(this.comment, this.name, this.isme, this.time,
      {required this.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
                width: double.infinity,
                color: Colors.teal,
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isme
                        ? Text(
                            name + "(You)",
                            style: TextStyle(color: Colors.white),
                          )
                        : Text(
                            name,
                            style: TextStyle(color: Colors.white),
                          ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          time.split(' ')[0],
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          time.substring(11, time.length - 10),
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                )),
            Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(comment, style: TextStyle(color: Colors.teal))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
