import 'package:flutter/foundation.dart';
import 'package:flutter_project/clean_architecture/domain/use_case/get_photos_use_case.dart';
import 'package:flutter_project/clean_architecture/presentation/search_list_state.dart';

class SearchListViewModel with ChangeNotifier {
  final GetPhotoUseCase _getPhotoUseCase;

  SearchListViewModel({
    required GetPhotoUseCase getPhotoUseCase,
  }) : _getPhotoUseCase = getPhotoUseCase;

  SearchListState _state = SearchListState();
  SearchListState get state => _state;

  void getPhoto() async {
    _state = state.copyWith(hits: await _getPhotoUseCase.execute());
    notifyListeners();
  }

  void onSearchByQuery(String query) async {
    _state = state.copyWith(hits: await _getPhotoUseCase.execute(query: query));
    notifyListeners();
  }

  void onSearchByTag() async {
    //태그 누르면 포함된 애만 나오기
    notifyListeners();
  }

  void onSortByLike() async {
    //_isSortByLike = !_isSortByLike;
    notifyListeners();
    //like순으로 정렬
  }
}
