import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:firebase_proj/models/serializers.dart';

part 'values.g.dart';

abstract class Values implements Built<Values, ValuesBuilder> {
  Values._();
  factory Values([void Function(ValuesBuilder) updates]) = _$Values;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Values.serializer, this)
        as Map<String, dynamic>;
  }

  static Values fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Values.serializer, json)!;
  }

  static Serializer<Values> get serializer => _$valuesSerializer;
  String? get comment;
  String? get descrip;
  String? get signInMail;
  String? get signUpMail;
  String? get signInPass;
  String? get signUpPass;
  String? get signUpName;
  String? get postId;
}
