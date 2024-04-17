// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Hit _$HitFromJson(Map<String, dynamic> json) {
  return _Hit.fromJson(json);
}

/// @nodoc
mixin _$Hit {
  int get id => throw _privateConstructorUsedError;
  String get tags => throw _privateConstructorUsedError;
  String get webformatURL => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HitCopyWith<Hit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitCopyWith<$Res> {
  factory $HitCopyWith(Hit value, $Res Function(Hit) then) =
      _$HitCopyWithImpl<$Res, Hit>;
  @useResult
  $Res call({int id, String tags, String webformatURL, int likes});
}

/// @nodoc
class _$HitCopyWithImpl<$Res, $Val extends Hit> implements $HitCopyWith<$Res> {
  _$HitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tags = null,
    Object? webformatURL = null,
    Object? likes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
      webformatURL: null == webformatURL
          ? _value.webformatURL
          : webformatURL // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HitImplCopyWith<$Res> implements $HitCopyWith<$Res> {
  factory _$$HitImplCopyWith(_$HitImpl value, $Res Function(_$HitImpl) then) =
      __$$HitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String tags, String webformatURL, int likes});
}

/// @nodoc
class __$$HitImplCopyWithImpl<$Res> extends _$HitCopyWithImpl<$Res, _$HitImpl>
    implements _$$HitImplCopyWith<$Res> {
  __$$HitImplCopyWithImpl(_$HitImpl _value, $Res Function(_$HitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tags = null,
    Object? webformatURL = null,
    Object? likes = null,
  }) {
    return _then(_$HitImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
      webformatURL: null == webformatURL
          ? _value.webformatURL
          : webformatURL // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HitImpl implements _Hit {
  const _$HitImpl(
      {required this.id,
      required this.tags,
      required this.webformatURL,
      required this.likes});

  factory _$HitImpl.fromJson(Map<String, dynamic> json) =>
      _$$HitImplFromJson(json);

  @override
  final int id;
  @override
  final String tags;
  @override
  final String webformatURL;
  @override
  final int likes;

  @override
  String toString() {
    return 'Hit(id: $id, tags: $tags, webformatURL: $webformatURL, likes: $likes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HitImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.webformatURL, webformatURL) ||
                other.webformatURL == webformatURL) &&
            (identical(other.likes, likes) || other.likes == likes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, tags, webformatURL, likes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HitImplCopyWith<_$HitImpl> get copyWith =>
      __$$HitImplCopyWithImpl<_$HitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HitImplToJson(
      this,
    );
  }
}

abstract class _Hit implements Hit {
  const factory _Hit(
      {required final int id,
      required final String tags,
      required final String webformatURL,
      required final int likes}) = _$HitImpl;

  factory _Hit.fromJson(Map<String, dynamic> json) = _$HitImpl.fromJson;

  @override
  int get id;
  @override
  String get tags;
  @override
  String get webformatURL;
  @override
  int get likes;
  @override
  @JsonKey(ignore: true)
  _$$HitImplCopyWith<_$HitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
