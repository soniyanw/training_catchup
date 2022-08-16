import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:firebase_proj/serializers.dart';

part 'comment.g.dart';

abstract class Comment implements Built<Comment, CommentBuilder> {
  Comment._();
  factory Comment([void Function(CommentBuilder) updates]) = _$Comment;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Comment.serializer, this)
        as Map<String, dynamic>;
  }

  static Comment fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Comment.serializer, json)!;
  }

  static Serializer<Comment> get serializer => _$commentSerializer;
  String get comment;
  String get postid;
  String get userid;
  String get name;
  String get time;
  String get id;
}
