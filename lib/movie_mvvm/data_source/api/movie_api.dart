import 'dart:convert';

import 'package:flutter_project/movie_mvvm/data_source/dto/movieDetail_dto.dart';
import 'package:http/http.dart' as http;

void main() {}

class MovieDetailApi {
  Future<MovieDetailDto> getMovieDetail(int movieId) async {
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/${movieId}?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
    final Map<String, dynamic> data = (response.statusCode == 200)
        ? jsonDecode(response.body)
        : throw Exception('api get error');
    return MovieDetailDto.fromJson(data);
  }
}
