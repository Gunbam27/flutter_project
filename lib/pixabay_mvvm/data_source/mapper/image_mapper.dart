import 'package:flutter_project/pixabay_mvvm/data_source/dto/imageDto.dart';
import 'package:flutter_project/pixabay_mvvm/data_source/dto/photoDto.dart';
import 'package:flutter_project/pixabay_mvvm/data_source/model/image.dart';
import 'package:flutter_project/pixabay_mvvm/data_source/model/photo.dart';

extension ToImageDto on ImageDto {
  Image toImage() {
    return Image(
      total: total ?? 0,
      totalHits: totalHits ?? 0,
      hits: hits != null ? hits!.map((e) => e.toPhoto()).toList() : <Photo>[],
    );
  }
}

extension ToPhoto on PhotoDto {
  Photo toPhoto() {
    return Photo(
      tags: tags ?? '',
      imageUrl: webformatURL ?? '',
    );
  }
}
