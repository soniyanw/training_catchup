import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:firebase_proj/models/comment.dart';
import 'package:firebase_proj/models/posts.dart';
import 'package:firebase_proj/models/values.dart';

part 'serializers.g.dart';

@SerializersFor([
  Comment, Posts, Values
  // TODO: add the built values that require serialization
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
