import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_result.freezed.dart';
part 'exchange_result.g.dart';

@freezed
class ExchangeResult with _$ExchangeResult {
  const factory ExchangeResult({
    required int timeLastUpdateUnix,
    required String timeLastUpdateUtc,
    required int timeNextUpdateUnix,
    required String timeNextUpdateUtc,
    required String baseCode,
    required Map<String, num> conversionRates,
  }) = _ExchangeResult;

  factory ExchangeResult.fromJson(Map<String, Object?> json) =>
      _$ExchangeResultFromJson(json);
}
