import 'dart:convert';

import 'package:flutter_project/clean_architecture/data/data_source/photo_api.dart';
import 'package:flutter_project/clean_architecture/data/dto/photo_result_dto.dart';
import 'package:http/http.dart' as http;

class PhotoApiImpl implements PhotoApi {
  final _baseUrl = 'https://pixabay.com/api/?key=';
  final _apiKey = '43171183-fb200e7c1a46ec32d1d26a1be';

  @override
  Future<PhotoResultDto> getPhotosAll() async {
    final response = await http.get(Uri.parse('$_baseUrl$_apiKey'));
    final PhotoResultDto data = (response.statusCode == 200)
        ? PhotoResultDto.fromJson(jsonDecode(response.body))
        : throw Exception('API GET ERROR');
    return data;
  }

  @override
  Future<PhotoResultDto> getPhotosByQuery(String query) async {
    final response = await http.get(Uri.parse('$_baseUrl$_apiKey&q=$query'));
    final PhotoResultDto data = (response.statusCode == 200)
        ? PhotoResultDto.fromJson(jsonDecode(response.body))
        : throw Exception('API GET BY ID ERROR');
    return data;
  }
}

//이름으로 검색 -> 이름으로 불러옴 -> 태그/좋아요
//태그로 검색 -> 그냥불러옴 -> 태그where로 찾아야댐
//좋아요 순으로 보려면 -> 그냥 불러옴 ->좋아요순으로 sorted
