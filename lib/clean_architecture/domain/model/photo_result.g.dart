// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhotoResultImpl _$$PhotoResultImplFromJson(Map<String, dynamic> json) =>
    _$PhotoResultImpl(
      hit: (json['hit'] as List<dynamic>)
          .map((e) => Hit.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PhotoResultImplToJson(_$PhotoResultImpl instance) =>
    <String, dynamic>{
      'hit': instance.hit,
    };
