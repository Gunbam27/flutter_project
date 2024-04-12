import 'package:flutter_project/img_search/data/data_source/photo_api.dart';
import 'package:flutter_project/img_search/data/mapper/photo_mapper.dart';
import 'package:flutter_project/img_search/data/model/photo.dart';
import 'package:flutter_project/img_search/data/repository/photo_repository.dart';

void main() async {
  List<Photo> impl =
      await PhotoRepositoryImpl(photoApi: PhotoApi()).getPhotos('해바라기');
}

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _photoApi;

  const PhotoRepositoryImpl({
    required PhotoApi photoApi,
  }) : _photoApi = photoApi;

  @override
  Future<List<Photo>> getPhotos(String query) async {
    final dto = await _photoApi.getPhotoResults(query);
    if (dto.hits == null) {
      return [];
    }
    return dto.hits!.map((e) => e.toPhoto()).toList();
  }
}
