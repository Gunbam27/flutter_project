import 'package:flutter_project/clean_architecture/data/dto/photo_result_dto.dart';

abstract interface class PhotoApi {
  Future<PhotoResultDto> getPhotosAll();
  Future<PhotoResultDto> getPhotosByQuery(String query);
}
