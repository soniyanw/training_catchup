// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'values.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Values> _$valuesSerializer = new _$ValuesSerializer();

class _$ValuesSerializer implements StructuredSerializer<Values> {
  @override
  final Iterable<Type> types = const [Values, _$Values];
  @override
  final String wireName = 'Values';

  @override
  Iterable<Object?> serialize(Serializers serializers, Values object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descrip;
    if (value != null) {
      result
        ..add('descrip')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postId;
    if (value != null) {
      result
        ..add('postId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comments;
    if (value != null) {
      result
        ..add('comments')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(dynamic)])));
    }
    value = object.posts;
    if (value != null) {
      result
        ..add('posts')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(dynamic)])));
    }
    return result;
  }

  @override
  Values deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ValuesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'descrip':
          result.descrip = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(dynamic)]))!
              as BuiltList<Object?>);
          break;
        case 'posts':
          result.posts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(dynamic)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Values extends Values {
  @override
  final String? comment;
  @override
  final String? descrip;
  @override
  final String? postId;
  @override
  final BuiltList<dynamic>? comments;
  @override
  final BuiltList<dynamic>? posts;

  factory _$Values([void Function(ValuesBuilder)? updates]) =>
      (new ValuesBuilder()..update(updates))._build();

  _$Values._(
      {this.comment, this.descrip, this.postId, this.comments, this.posts})
      : super._();

  @override
  Values rebuild(void Function(ValuesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValuesBuilder toBuilder() => new ValuesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Values &&
        comment == other.comment &&
        descrip == other.descrip &&
        postId == other.postId &&
        comments == other.comments &&
        posts == other.posts;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, comment.hashCode), descrip.hashCode),
                postId.hashCode),
            comments.hashCode),
        posts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Values')
          ..add('comment', comment)
          ..add('descrip', descrip)
          ..add('postId', postId)
          ..add('comments', comments)
          ..add('posts', posts))
        .toString();
  }
}

class ValuesBuilder implements Builder<Values, ValuesBuilder> {
  _$Values? _$v;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  String? _descrip;
  String? get descrip => _$this._descrip;
  set descrip(String? descrip) => _$this._descrip = descrip;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  ListBuilder<dynamic>? _comments;
  ListBuilder<dynamic> get comments =>
      _$this._comments ??= new ListBuilder<dynamic>();
  set comments(ListBuilder<dynamic>? comments) => _$this._comments = comments;

  ListBuilder<dynamic>? _posts;
  ListBuilder<dynamic> get posts =>
      _$this._posts ??= new ListBuilder<dynamic>();
  set posts(ListBuilder<dynamic>? posts) => _$this._posts = posts;

  ValuesBuilder();

  ValuesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _comment = $v.comment;
      _descrip = $v.descrip;
      _postId = $v.postId;
      _comments = $v.comments?.toBuilder();
      _posts = $v.posts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Values other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Values;
  }

  @override
  void update(void Function(ValuesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Values build() => _build();

  _$Values _build() {
    _$Values _$result;
    try {
      _$result = _$v ??
          new _$Values._(
              comment: comment,
              descrip: descrip,
              postId: postId,
              comments: _comments?.build(),
              posts: _posts?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'comments';
        _comments?.build();
        _$failedField = 'posts';
        _posts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Values', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
