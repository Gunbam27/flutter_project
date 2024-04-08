import 'package:flutter/cupertino.dart';

class ResultViewModel with ChangeNotifier {
  double bmi = 0;
  String result = '저체중';
  //메서드
  void calculate(double height, double weight) {
    bmi = weight / ((height / 100) * (height / 100));
    _calcBmi(bmi);
    notifyListeners();
  }

  void _calcBmi(double bmi) {
    if (bmi >= 35) {
      result = '고도 비만';
    } else if (bmi >= 30) {
      result = '2단계 비만';
    } else if (bmi >= 25) {
      result = '1단계 비만';
    } else if (bmi >= 23) {
      result = '과체중';
    } else if (bmi >= 18.5) {
      result = '정상';
    }
    notifyListeners();
  }
}
