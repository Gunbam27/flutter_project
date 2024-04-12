import 'dart:convert';

import 'package:flutter_project/img_search/data/dto/photo_result_dto.dart';
import 'package:http/http.dart' as http;

class PhotoApi {
  late final _baseUrl = 'https://pixabay.com/api/?key=$apiKey';
  final apiKey = '43171183-fb200e7c1a46ec32d1d26a1be';

  Future<PhotoResultDto> getPhotoResults(String query) async {
    final response =
        await http.get(Uri.parse('$_baseUrl&q=$query&image_type=photo'));
    return PhotoResultDto.fromJson(jsonDecode(response.body));
  }
}
