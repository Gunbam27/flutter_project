import 'package:flutter_project/currency/data/dto/exchange_dto.dart';
import 'package:flutter_project/currency/data/model/exchange_result.dart';

extension ToExchange on ExchangeResultDto {
  ExchangeResult toExchange() {
    return ExchangeResult(
      timeLastUpdateUnix: timeLastUpdateUnix?.toInt() ?? 0,
      timeLastUpdateUtc: timeLastUpdateUtc ?? '',
      timeNextUpdateUnix: timeNextUpdateUnix?.toInt() ?? 0,
      timeNextUpdateUtc: timeNextUpdateUtc ?? '',
      baseCode: baseCode ?? '',
      conversionRates: _toMap(conversionRates?.toJson() ?? {}),
    );
  }

  Map<String, num> _toMap(Map<String, dynamic> map) {
    Map<String, num> result = {};
    map.forEach((key, value) {
      result[key] = value;
    });
    return result;
  }
}
