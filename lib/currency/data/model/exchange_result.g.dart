// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExchangeResultImpl _$$ExchangeResultImplFromJson(Map<String, dynamic> json) =>
    _$ExchangeResultImpl(
      timeLastUpdateUnix: json['timeLastUpdateUnix'] as int,
      timeLastUpdateUtc: json['timeLastUpdateUtc'] as String,
      timeNextUpdateUnix: json['timeNextUpdateUnix'] as int,
      timeNextUpdateUtc: json['timeNextUpdateUtc'] as String,
      baseCode: json['baseCode'] as String,
      conversionRates: Map<String, num>.from(json['conversionRates'] as Map),
    );

Map<String, dynamic> _$$ExchangeResultImplToJson(
        _$ExchangeResultImpl instance) =>
    <String, dynamic>{
      'timeLastUpdateUnix': instance.timeLastUpdateUnix,
      'timeLastUpdateUtc': instance.timeLastUpdateUtc,
      'timeNextUpdateUnix': instance.timeNextUpdateUnix,
      'timeNextUpdateUtc': instance.timeNextUpdateUtc,
      'baseCode': instance.baseCode,
      'conversionRates': instance.conversionRates,
    };
