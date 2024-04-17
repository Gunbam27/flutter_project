import 'package:freezed_annotation/freezed_annotation.dart';

part 'hit.freezed.dart';
part 'hit.g.dart';

@freezed
class Hit with _$Hit {
  const factory Hit({
    required int id,
    required String tags,
    required String webformatURL,
    required int likes,
  }) = _Hit;

  factory Hit.fromJson(Map<String, Object?> json) => _$HitFromJson(json);
}
