import 'package:flutter/material.dart';
import 'package:flutter_project/movie_mvvm/data_source/model/movieInfo.dart';
import 'package:flutter_project/movie_mvvm/data_source/repository/movie_repository_impl.dart';

class HomeViewModel with ChangeNotifier {
  final MovieRepositoryImpl _movieRepositoryImpl;
  List<MovieInfo> _movieList = [];
  List<MovieInfo> get movieList => List.unmodifiable(_movieList);
  String? searchTitle;
  HomeViewModel(this._movieRepositoryImpl);

  void fetchMovies() async {
    _movieList = await _movieRepositoryImpl.getMovieInfoList();
    print(_movieList);
    notifyListeners();
  }

  void onSearchUser(searchTitle) async {
    _movieList = await _movieRepositoryImpl.getMovieInfoList();
    print(searchTitle);
    _movieList = _movieList
        .where((element) => element.title.contains('$searchTitle'))
        .toList();
    print(_movieList);
    notifyListeners();
  }
}
