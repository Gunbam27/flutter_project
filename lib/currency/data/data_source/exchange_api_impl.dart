import 'dart:convert';

import 'package:flutter_project/currency/data/data_source/exchange_api.dart';
import 'package:flutter_project/currency/data/dto/exchange_dto.dart';
import 'package:http/http.dart' as http;

class ExchangeApiImpl implements ExchangeApi {
  final _baseUrl = "https://v6.exchangerate-api.com/v6/";
  final _api = "3734f80652df7d2487736186";

  Future<ExchangeResultDto> getResults(String query) async {
    final response = await http.get(Uri.parse('$_baseUrl$_api/latest/$query'));
    print("query:$_baseUrl$_api/latest/$query");
    return ExchangeResultDto.fromJson(jsonDecode(response.body));
  }
}
