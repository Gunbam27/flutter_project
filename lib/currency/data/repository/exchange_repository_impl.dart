import 'package:flutter_project/currency/data/data_source/exchange_api.dart';
import 'package:flutter_project/currency/data/mapper/exchange_dto_mapper.dart';
import 'package:flutter_project/currency/data/model/exchange_result.dart';
import 'package:flutter_project/currency/data/repository/exchange_repository.dart';

class ExchangeRepositoryImpl implements ExchangeRepository {
  final ExchangeApi _exchangeApi;

  const ExchangeRepositoryImpl({
    required ExchangeApi exchangeApi,
  }) : _exchangeApi = exchangeApi;

  @override
  Future<ExchangeResult> getInfo(String query) async {
    final results = await _exchangeApi.getResults(query);
    return results.toExchange();
  }
}
