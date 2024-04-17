import 'package:flutter_project/clean_architecture/data/data_source/photo_api.dart';
import 'package:flutter_project/clean_architecture/data/mapper/photo_mapper.dart';
import 'package:flutter_project/clean_architecture/domain/model/hit.dart';
import 'package:flutter_project/clean_architecture/domain/repository/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  PhotoApi _photoApi;

  PhotoRepositoryImpl({
    required PhotoApi photoApi,
  }) : _photoApi = photoApi;

  @override
  Future<List<Hit>> getHitAll() async {
    final data = await _photoApi.getPhotosAll();
    return data.toPhoto().hit;
  }

  @override
  Future<List<Hit>> getHitByQuery(String query) async {
    final data = await _photoApi.getPhotosByQuery(query);
    return data.toPhoto().hit;
  }
}
