import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NewPost extends StatefulWidget {
  const NewPost({Key? key}) : super(key: key);

  @override
  State<NewPost> createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  String descrip = '';
  var controll = TextEditingController();
  void postsomething() async {
    FocusScope.of(context).unfocus();
    final uidd = await FirebaseAuth.instance.currentUser!.uid ?? '';
    final data =
        await FirebaseFirestore.instance.collection('users').doc(uidd).get();
    final data2 = await FirebaseFirestore.instance.collection('posts').doc();
    await FirebaseFirestore.instance.collection('posts').doc().set({
      "descrip": descrip,
      "userid": data['id'],
      'name': data['name'],
      'postid': data2.id,
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
        title: Text("Catch-Up"),
      ),
      body: Center(
        child: Card(
          elevation: 0,
          color: Colors.teal[50],
          child: Form(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextField(
                        style: TextStyle(color: Colors.teal),
                        controller: controll,
                        onChanged: (val) {
                          setState(() {
                            descrip = val;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: "Type Something...",
                          labelStyle: TextStyle(color: Colors.teal),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.teal)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.teal)),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    RaisedButton(
                        onPressed: controll.text.isEmpty
                            ? null
                            : () {
                                postsomething();
                                Navigator.of(context).pop();
                                setState(() {});
                              },
                        color: Colors.teal,
                        child: Text(
                          "Post",
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
/*echo "# training_catchup" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/soniyanw/training_catchup.git
git push -u origin main*/