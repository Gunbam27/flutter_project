import 'package:flutter_project/movie_mvvm/data_source/api/movieInfo_api.dart';
import 'package:flutter_project/movie_mvvm/data_source/api/movie_api.dart';
import 'package:flutter_project/movie_mvvm/data_source/dto/movieDetail_dto.dart';
import 'package:flutter_project/movie_mvvm/data_source/mapper/movieDetail_mapper.dart';
import 'package:flutter_project/movie_mvvm/data_source/model/movieDetail.dart';
import 'package:flutter_project/movie_mvvm/data_source/model/movieInfo.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieDetailApi _apiDetail = MovieDetailApi();
  final MovieApi _api = MovieApi();

  MovieRepositoryImpl();

  @override
  Future<List<MovieInfo>> getMovieInfoList() async {
    List<MovieInfo> modelResult = await _api.getMovieInfoList();
    return modelResult;
  }

  @override
  Future<MovieDetail> getMovieDetail(int id) async {
    MovieDetailDto modelResult = await _apiDetail.getMovieDetail(id);
    return modelResult.toMovieDetail();
  }
}

abstract interface class MovieRepository {
  Future<List<MovieInfo>> getMovieInfoList();

  Future<MovieDetail> getMovieDetail(int id);
}
