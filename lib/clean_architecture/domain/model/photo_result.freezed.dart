// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PhotoResult _$PhotoResultFromJson(Map<String, dynamic> json) {
  return _PhotoResult.fromJson(json);
}

/// @nodoc
mixin _$PhotoResult {
  List<Hit> get hit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoResultCopyWith<PhotoResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoResultCopyWith<$Res> {
  factory $PhotoResultCopyWith(
          PhotoResult value, $Res Function(PhotoResult) then) =
      _$PhotoResultCopyWithImpl<$Res, PhotoResult>;
  @useResult
  $Res call({List<Hit> hit});
}

/// @nodoc
class _$PhotoResultCopyWithImpl<$Res, $Val extends PhotoResult>
    implements $PhotoResultCopyWith<$Res> {
  _$PhotoResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hit = null,
  }) {
    return _then(_value.copyWith(
      hit: null == hit
          ? _value.hit
          : hit // ignore: cast_nullable_to_non_nullable
              as List<Hit>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoResultImplCopyWith<$Res>
    implements $PhotoResultCopyWith<$Res> {
  factory _$$PhotoResultImplCopyWith(
          _$PhotoResultImpl value, $Res Function(_$PhotoResultImpl) then) =
      __$$PhotoResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Hit> hit});
}

/// @nodoc
class __$$PhotoResultImplCopyWithImpl<$Res>
    extends _$PhotoResultCopyWithImpl<$Res, _$PhotoResultImpl>
    implements _$$PhotoResultImplCopyWith<$Res> {
  __$$PhotoResultImplCopyWithImpl(
      _$PhotoResultImpl _value, $Res Function(_$PhotoResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hit = null,
  }) {
    return _then(_$PhotoResultImpl(
      hit: null == hit
          ? _value._hit
          : hit // ignore: cast_nullable_to_non_nullable
              as List<Hit>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoResultImpl implements _PhotoResult {
  const _$PhotoResultImpl({required final List<Hit> hit}) : _hit = hit;

  factory _$PhotoResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoResultImplFromJson(json);

  final List<Hit> _hit;
  @override
  List<Hit> get hit {
    if (_hit is EqualUnmodifiableListView) return _hit;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hit);
  }

  @override
  String toString() {
    return 'PhotoResult(hit: $hit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoResultImpl &&
            const DeepCollectionEquality().equals(other._hit, _hit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_hit));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoResultImplCopyWith<_$PhotoResultImpl> get copyWith =>
      __$$PhotoResultImplCopyWithImpl<_$PhotoResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoResultImplToJson(
      this,
    );
  }
}

abstract class _PhotoResult implements PhotoResult {
  const factory _PhotoResult({required final List<Hit> hit}) =
      _$PhotoResultImpl;

  factory _PhotoResult.fromJson(Map<String, dynamic> json) =
      _$PhotoResultImpl.fromJson;

  @override
  List<Hit> get hit;
  @override
  @JsonKey(ignore: true)
  _$$PhotoResultImplCopyWith<_$PhotoResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
