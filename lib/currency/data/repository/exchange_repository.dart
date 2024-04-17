import 'package:flutter_project/currency/data/model/exchange_result.dart';

abstract interface class ExchangeRepository {
  Future<ExchangeResult> getInfo(String query);
}
