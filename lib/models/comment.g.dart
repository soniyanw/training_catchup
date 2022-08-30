// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Comment> _$commentSerializer = new _$CommentSerializer();

class _$CommentSerializer implements StructuredSerializer<Comment> {
  @override
  final Iterable<Type> types = const [Comment, _$Comment];
  @override
  final String wireName = 'Comment';

  @override
  Iterable<Object?> serialize(Serializers serializers, Comment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'comment',
      serializers.serialize(object.comment,
          specifiedType: const FullType(String)),
      'postid',
      serializers.serialize(object.postid,
          specifiedType: const FullType(String)),
      'userid',
      serializers.serialize(object.userid,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Comment deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'postid':
          result.postid = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'userid':
          result.userid = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Comment extends Comment {
  @override
  final String comment;
  @override
  final String postid;
  @override
  final String userid;
  @override
  final String name;
  @override
  final String time;
  @override
  final String id;

  factory _$Comment([void Function(CommentBuilder)? updates]) =>
      (new CommentBuilder()..update(updates))._build();

  _$Comment._(
      {required this.comment,
      required this.postid,
      required this.userid,
      required this.name,
      required this.time,
      required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(comment, r'Comment', 'comment');
    BuiltValueNullFieldError.checkNotNull(postid, r'Comment', 'postid');
    BuiltValueNullFieldError.checkNotNull(userid, r'Comment', 'userid');
    BuiltValueNullFieldError.checkNotNull(name, r'Comment', 'name');
    BuiltValueNullFieldError.checkNotNull(time, r'Comment', 'time');
    BuiltValueNullFieldError.checkNotNull(id, r'Comment', 'id');
  }

  @override
  Comment rebuild(void Function(CommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentBuilder toBuilder() => new CommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comment &&
        comment == other.comment &&
        postid == other.postid &&
        userid == other.userid &&
        name == other.name &&
        time == other.time &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, comment.hashCode), postid.hashCode),
                    userid.hashCode),
                name.hashCode),
            time.hashCode),
        id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Comment')
          ..add('comment', comment)
          ..add('postid', postid)
          ..add('userid', userid)
          ..add('name', name)
          ..add('time', time)
          ..add('id', id))
        .toString();
  }
}

class CommentBuilder implements Builder<Comment, CommentBuilder> {
  _$Comment? _$v;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  String? _postid;
  String? get postid => _$this._postid;
  set postid(String? postid) => _$this._postid = postid;

  String? _userid;
  String? get userid => _$this._userid;
  set userid(String? userid) => _$this._userid = userid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  CommentBuilder();

  CommentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _comment = $v.comment;
      _postid = $v.postid;
      _userid = $v.userid;
      _name = $v.name;
      _time = $v.time;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Comment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Comment;
  }

  @override
  void update(void Function(CommentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Comment build() => _build();

  _$Comment _build() {
    final _$result = _$v ??
        new _$Comment._(
            comment: BuiltValueNullFieldError.checkNotNull(
                comment, r'Comment', 'comment'),
            postid: BuiltValueNullFieldError.checkNotNull(
                postid, r'Comment', 'postid'),
            userid: BuiltValueNullFieldError.checkNotNull(
                userid, r'Comment', 'userid'),
            name:
                BuiltValueNullFieldError.checkNotNull(name, r'Comment', 'name'),
            time:
                BuiltValueNullFieldError.checkNotNull(time, r'Comment', 'time'),
            id: BuiltValueNullFieldError.checkNotNull(id, r'Comment', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
