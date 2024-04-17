import 'package:flutter_project/clean_architecture/data/dto/photo_result_dto.dart';
import 'package:flutter_project/clean_architecture/domain/model/hit.dart';
import 'package:flutter_project/clean_architecture/domain/model/photo_result.dart';

extension ToPhoto on PhotoResultDto {
  PhotoResult toPhoto() {
    return PhotoResult(hit: hits!.map((e) => e.toHit()).toList());
  }
}

extension ToHit on HitsDto {
  Hit toHit() {
    return Hit(
      id: id!.toInt(),
      tags: tags ?? '',
      webformatURL: webformatURL ?? '',
      likes: likes?.toInt() ?? 0,
    );
  }
}
