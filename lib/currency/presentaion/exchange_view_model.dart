import 'package:flutter/widgets.dart';
import 'package:flutter_project/currency/data/model/currency.dart';
import 'package:flutter_project/currency/data/model/exchange_result.dart';
import 'package:flutter_project/currency/data/repository/exchange_repository.dart';

class ExchangeViewModel with ChangeNotifier {
  final ExchangeRepository _repository;
  ExchangeResult? exchangeResult;

  num userPrice = 0;
  num calcPrice = 0;

  Currency userClickArea = Currency.KRW;
  Currency calcClickArea = Currency.USD;

  ExchangeViewModel({
    required ExchangeRepository repository,
  }) : _repository = repository;

  //첫번째 버튼의 값이 바뀌면 query에맞는 데이터를 가져온다.
  Future<void> firstArea({Currency? currency}) async {
    userClickArea = currency ?? userClickArea;
    exchangeResult = await _repository.getInfo(userClickArea.label);
    print("exchangeResult:$exchangeResult");
    notifyListeners();
  }

  //두번째 버튼의 값이 바뀌면 그대로 찾아준다.
  Future<void> secondArea(Currency? currency) async {
    calcClickArea = currency ?? calcClickArea;
  }

  //첫번째 인풋에 값이 담기면 두번째를 바꿔준다
  void firstExchange(double userInput) {
    userPrice = userInput;
    calcPrice = userPrice *
        ((exchangeResult?.conversionRates[calcClickArea.label]) ?? 0);
    notifyListeners();
  }

  //두번째 인풋에 값이 담기면 첫번째를 바꿔준다
  void secondExchange(double userInput) {
    calcPrice = userInput;
    userPrice = calcPrice /
        ((exchangeResult?.conversionRates[calcClickArea.label]) ?? 0);

    print(exchangeResult?.conversionRates[calcClickArea.label]);

    notifyListeners();
  }
}
