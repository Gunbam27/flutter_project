import 'package:flutter_project/clean_architecture/domain/model/hit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_result.freezed.dart';
part 'photo_result.g.dart';

@freezed
class PhotoResult with _$PhotoResult {
  const factory PhotoResult({
    required List<Hit> hit,
  }) = _PhotoResult;

  factory PhotoResult.fromJson(Map<String, Object?> json) =>
      _$PhotoResultFromJson(json);
}
