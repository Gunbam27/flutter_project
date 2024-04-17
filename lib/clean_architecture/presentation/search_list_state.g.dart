// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_list_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchListStateImpl _$$SearchListStateImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchListStateImpl(
      hits: (json['hits'] as List<dynamic>?)
              ?.map((e) => Hit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SearchListStateImplToJson(
        _$SearchListStateImpl instance) =>
    <String, dynamic>{
      'hits': instance.hits,
    };
