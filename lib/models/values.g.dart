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
    value = object.signInMail;
    if (value != null) {
      result
        ..add('signInMail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.signUpMail;
    if (value != null) {
      result
        ..add('signUpMail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.signInPass;
    if (value != null) {
      result
        ..add('signInPass')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.signUpPass;
    if (value != null) {
      result
        ..add('signUpPass')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.signUpName;
    if (value != null) {
      result
        ..add('signUpName')
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
        case 'signInMail':
          result.signInMail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'signUpMail':
          result.signUpMail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'signInPass':
          result.signInPass = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'signUpPass':
          result.signUpPass = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'signUpName':
          result.signUpName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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
  final String? signInMail;
  @override
  final String? signUpMail;
  @override
  final String? signInPass;
  @override
  final String? signUpPass;
  @override
  final String? signUpName;
  @override
  final String? postId;

  factory _$Values([void Function(ValuesBuilder)? updates]) =>
      (new ValuesBuilder()..update(updates))._build();

  _$Values._(
      {this.comment,
      this.descrip,
      this.signInMail,
      this.signUpMail,
      this.signInPass,
      this.signUpPass,
      this.signUpName,
      this.postId})
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
        signInMail == other.signInMail &&
        signUpMail == other.signUpMail &&
        signInPass == other.signInPass &&
        signUpPass == other.signUpPass &&
        signUpName == other.signUpName &&
        postId == other.postId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, comment.hashCode), descrip.hashCode),
                            signInMail.hashCode),
                        signUpMail.hashCode),
                    signInPass.hashCode),
                signUpPass.hashCode),
            signUpName.hashCode),
        postId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Values')
          ..add('comment', comment)
          ..add('descrip', descrip)
          ..add('signInMail', signInMail)
          ..add('signUpMail', signUpMail)
          ..add('signInPass', signInPass)
          ..add('signUpPass', signUpPass)
          ..add('signUpName', signUpName)
          ..add('postId', postId))
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

  String? _signInMail;
  String? get signInMail => _$this._signInMail;
  set signInMail(String? signInMail) => _$this._signInMail = signInMail;

  String? _signUpMail;
  String? get signUpMail => _$this._signUpMail;
  set signUpMail(String? signUpMail) => _$this._signUpMail = signUpMail;

  String? _signInPass;
  String? get signInPass => _$this._signInPass;
  set signInPass(String? signInPass) => _$this._signInPass = signInPass;

  String? _signUpPass;
  String? get signUpPass => _$this._signUpPass;
  set signUpPass(String? signUpPass) => _$this._signUpPass = signUpPass;

  String? _signUpName;
  String? get signUpName => _$this._signUpName;
  set signUpName(String? signUpName) => _$this._signUpName = signUpName;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  ValuesBuilder();

  ValuesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _comment = $v.comment;
      _descrip = $v.descrip;
      _signInMail = $v.signInMail;
      _signUpMail = $v.signUpMail;
      _signInPass = $v.signInPass;
      _signUpPass = $v.signUpPass;
      _signUpName = $v.signUpName;
      _postId = $v.postId;
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
    final _$result = _$v ??
        new _$Values._(
            comment: comment,
            descrip: descrip,
            signInMail: signInMail,
            signUpMail: signUpMail,
            signInPass: signInPass,
            signUpPass: signUpPass,
            signUpName: signUpName,
            postId: postId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
