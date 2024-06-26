import 'package:flutter_project/pixabay_mvvm/data_source/api/pixabay_api.dart';
import 'package:flutter_project/pixabay_mvvm/data_source/dto/photoDto.dart';
import 'package:flutter_project/pixabay_mvvm/data_source/mapper/image_mapper.dart';
import 'package:flutter_project/pixabay_mvvm/data_source/model/photo.dart';
import 'package:flutter_project/pixabay_mvvm/data_source/result.dart';

void main() async {
  PixabayRepositoryImpl hit = PixabayRepositoryImpl(PixabayApi());

  final result = await hit.getWebFormatImage('바보');
  switch (result) {
    case Success<List<Photo>, NetworkError>():
      print(result.data);
    case Error<List<Photo>, NetworkError>():
      {
        switch (result.error) {
          case NetworkError.slang:
            print('비속어를 사용할 수 없습니다');
          case NetworkError.unknown:
            print('알 수 없는 네트워크 에러');
          case NetworkError.requestTimeout:
            print('타임아웃');
        }
      }
  }
}

class PixabayRepositoryImpl implements PixabayRepository {
  final PixabayApi _api;

  PixabayRepositoryImpl(this._api);

  @override
  Future<Result<List<Photo>, NetworkError>> getWebFormatImage(
      String prompt) async {
    try {
      if (prompt.contains('바보')) {
        return Result.error(NetworkError.slang);
      }
      List<PhotoDto> dtoResult = await _api.getImgUrl(prompt);
      return Result.success(dtoResult.map((e) => e.toPhoto()).toList());
    } catch (e) {
      return Result.error(NetworkError.unknown);
    }
  }
}

abstract interface class PixabayRepository {
  Future<Result<List<Photo>, NetworkError>> getWebFormatImage(String prompt);
}
