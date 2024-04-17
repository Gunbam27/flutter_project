import 'package:flutter_project/clean_architecture/domain/model/hit.dart';
import 'package:flutter_project/clean_architecture/domain/repository/photo_repository.dart';

class GetPhotoUseCase {
  final PhotoRepository _photoRepository;

  GetPhotoUseCase(this._photoRepository);

  Future<List<Hit>> execute({String? query}) async {
    if (query == null) {
      return await _photoRepository.getHitAll();
    }
    return await _photoRepository.getHitByQuery(query);
  }
}
