import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:firebase_proj/serializers.dart';

part 'posts.g.dart';

abstract class Posts implements Built<Posts, PostsBuilder> {
  Posts._();
  factory Posts([void Function(PostsBuilder) updates]) = _$Posts;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Posts.serializer, this)
        as Map<String, dynamic>;
  }

  static Posts fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Posts.serializer, json)!;
  }

  static Serializer<Posts> get serializer => _$postsSerializer;
  String get descrip;
  String get userid;
  String get name;
  String get postid;
  String get time;
}
