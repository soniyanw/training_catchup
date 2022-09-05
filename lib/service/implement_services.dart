import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_proj/models/comment.dart';
import 'package:firebase_proj/models/posts.dart';
import 'package:firebase_proj/service/services.dart';

class Implementation implements AllServices {
  @override
  CollectionReference<Map<String, dynamic>> collectionPost =
      FirebaseFirestore.instance.collection('posts');

  @override
  final currentuser = FirebaseAuth.instance.currentUser?.uid ?? '';

  @override
  CollectionReference<Map<String, dynamic>> collectionComment =
      FirebaseFirestore.instance.collection('comments');

  @override
  void signin({String? mail, String? pass}) async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: mail ?? '', password: pass ?? '');
  }

  @override
  void signout() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  void signup({String? name, String? mail, String? pass}) async {
    UserCredential userc;
    userc = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: mail ?? '', password: pass ?? '');

    await FirebaseFirestore.instance
        .collection('users')
        .doc(userc.user!.uid)
        .set({"mail": mail, "name": name, "id": userc.user!.uid});
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: mail ?? '', password: pass ?? '');
  }

  @override
  void postsomething(String? descrip) async {
    final uidd = await FirebaseAuth.instance.currentUser!.uid ?? '';
    final data =
        await FirebaseFirestore.instance.collection('users').doc(uidd).get();

    final posts = await FirebaseFirestore.instance.collection('posts').doc();
    Posts newPost = Posts((b) => b
      ..descrip = descrip
      ..userid = data['id']
      ..name = data['name']
      ..postid = posts.id.toString()
      ..time = Timestamp.now().toDate().toString());
    posts.set(newPost.toJson());
  }

  @override
  void commentsomething(String postid, String? comment) async {
    final uidd = await FirebaseAuth.instance.currentUser!.uid;
    final data =
        await FirebaseFirestore.instance.collection('users').doc(uidd).get();
    final comms = await FirebaseFirestore.instance.collection('comments').doc();
    Comment newComment = Comment((b) => b
      ..comment = comment
      ..postid = postid
      ..userid = data['id']
      ..name = data['name']
      ..time = Timestamp.now().toDate().toString()
      ..id = comms.id.toString());
    comms.set(newComment.toJson());
  }

  @override
  Future<BuiltList<Comment>> getcomments({required String postid}) async {
    final QuerySnapshot<Map<String, dynamic>> _collectionRef =
        await collectionComment.where("postid", isEqualTo: postid).get();
    List<QueryDocumentSnapshot<Map<String, dynamic>>> snapshot =
        _collectionRef.docs;
    List<Comment> commdata = [];

    snapshot.forEach((element) {
      commdata.add(Comment.fromJson(element.data()));
    });
    print("comments");
    print(commdata);
    return commdata.toBuiltList();
  }

  @override
  Future<BuiltList<Posts>> getposts() async {
    final QuerySnapshot<Map<String, dynamic>> _collectionRef =
        await collectionPost.get();
    List<QueryDocumentSnapshot<Map<String, dynamic>>> snapshot =
        _collectionRef.docs;
    final List<Posts> postdata = [];

    snapshot.forEach((element) {
      postdata.add(Posts.fromJson(element.data()));
    });
    print("posts");
    print(postdata);
    return postdata.toBuiltList();
  }
}
