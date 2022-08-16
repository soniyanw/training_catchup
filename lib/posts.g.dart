// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Posts> _$postsSerializer = new _$PostsSerializer();

class _$PostsSerializer implements StructuredSerializer<Posts> {
  @override
  final Iterable<Type> types = const [Posts, _$Posts];
  @override
  final String wireName = 'Posts';

  @override
  Iterable<Object?> serialize(Serializers serializers, Posts object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'descrip',
      serializers.serialize(object.descrip,
          specifiedType: const FullType(String)),
      'userid',
      serializers.serialize(object.userid,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'postid',
      serializers.serialize(object.postid,
          specifiedType: const FullType(String)),
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Posts deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'descrip':
          result.descrip = serializers.deserialize(value,
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
        case 'postid':
          result.postid = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Posts extends Posts {
  @override
  final String descrip;
  @override
  final String userid;
  @override
  final String name;
  @override
  final String postid;
  @override
  final String time;

  factory _$Posts([void Function(PostsBuilder)? updates]) =>
      (new PostsBuilder()..update(updates))._build();

  _$Posts._(
      {required this.descrip,
      required this.userid,
      required this.name,
      required this.postid,
      required this.time})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(descrip, r'Posts', 'descrip');
    BuiltValueNullFieldError.checkNotNull(userid, r'Posts', 'userid');
    BuiltValueNullFieldError.checkNotNull(name, r'Posts', 'name');
    BuiltValueNullFieldError.checkNotNull(postid, r'Posts', 'postid');
    BuiltValueNullFieldError.checkNotNull(time, r'Posts', 'time');
  }

  @override
  Posts rebuild(void Function(PostsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostsBuilder toBuilder() => new PostsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Posts &&
        descrip == other.descrip &&
        userid == other.userid &&
        name == other.name &&
        postid == other.postid &&
        time == other.time;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, descrip.hashCode), userid.hashCode), name.hashCode),
            postid.hashCode),
        time.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Posts')
          ..add('descrip', descrip)
          ..add('userid', userid)
          ..add('name', name)
          ..add('postid', postid)
          ..add('time', time))
        .toString();
  }
}

class PostsBuilder implements Builder<Posts, PostsBuilder> {
  _$Posts? _$v;

  String? _descrip;
  String? get descrip => _$this._descrip;
  set descrip(String? descrip) => _$this._descrip = descrip;

  String? _userid;
  String? get userid => _$this._userid;
  set userid(String? userid) => _$this._userid = userid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _postid;
  String? get postid => _$this._postid;
  set postid(String? postid) => _$this._postid = postid;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  PostsBuilder();

  PostsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _descrip = $v.descrip;
      _userid = $v.userid;
      _name = $v.name;
      _postid = $v.postid;
      _time = $v.time;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Posts other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Posts;
  }

  @override
  void update(void Function(PostsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Posts build() => _build();

  _$Posts _build() {
    final _$result = _$v ??
        new _$Posts._(
            descrip: BuiltValueNullFieldError.checkNotNull(
                descrip, r'Posts', 'descrip'),
            userid: BuiltValueNullFieldError.checkNotNull(
                userid, r'Posts', 'userid'),
            name: BuiltValueNullFieldError.checkNotNull(name, r'Posts', 'name'),
            postid: BuiltValueNullFieldError.checkNotNull(
                postid, r'Posts', 'postid'),
            time:
                BuiltValueNullFieldError.checkNotNull(time, r'Posts', 'time'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
