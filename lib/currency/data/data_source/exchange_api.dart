import 'package:flutter_project/currency/data/dto/exchange_dto.dart';

abstract interface class ExchangeApi {
  Future<ExchangeResultDto> getResults(String query);
}
