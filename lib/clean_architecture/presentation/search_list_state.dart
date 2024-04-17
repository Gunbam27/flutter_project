import 'package:flutter_project/clean_architecture/domain/model/hit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_list_state.freezed.dart';
part 'search_list_state.g.dart';

@freezed
class SearchListState with _$SearchListState {
  const factory SearchListState({
    @Default([]) List<Hit> hits,
  }) = _SearchListState;

  factory SearchListState.fromJson(Map<String, Object?> json) =>
      _$SearchListStateFromJson(json);
}
