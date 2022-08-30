import 'package:firebase_proj/models/values.dart';
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
  void assignName(String val) {
    state = state.rebuild((p0) => p0.signUpName = val);
  }

  void assignComment(String val) {
    state = state.rebuild((p0) => p0.comment = val);
  }

  void assignSUMail(String val) {
    state = state.rebuild((p0) => p0.signUpMail = val);
  }

  void assignSUPass(String val) {
    state = state.rebuild((p0) => p0.signUpPass = val);
  }

  void assignSIMail(String val) {
    state = state.rebuild((p0) => p0.signInMail = val);
  }

  void assignSIPass(String val) {
    state = state.rebuild((p0) => p0.signInPass = val);
  }

  void assignDescrip(String val) {
    state = state.rebuild((p0) => p0.descrip = val);
  }

  void assignPostId(String val) {
    state = state.rebuild((p0) => p0.postId = val);
  }
}
