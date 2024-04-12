import 'package:flutter/cupertino.dart';
import 'package:flutter_project/img_search/data/model/photo.dart';
import 'package:flutter_project/img_search/data/repository/photo_repository_impl.dart';

class SearchListViewModel with ChangeNotifier {
  final PhotoRepositoryImpl _photoRepositoryImpl;

  List<Photo> _photos = [];

  List<Photo> get photos => List.unmodifiable(_photos);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void onSearch(String query) async {
    _isLoading = true;
    notifyListeners();

    _photos = await _photoRepositoryImpl.getPhotos(query);
    _isLoading = false;
    notifyListeners();
  }

  SearchListViewModel({
    required PhotoRepositoryImpl photoRepositoryImpl,
  }) : _photoRepositoryImpl = photoRepositoryImpl;
}
