import 'package:flutter_project/clean_architecture/domain/model/hit.dart';

abstract interface class PhotoRepository {
  Future<List<Hit>> getHitAll();
  Future<List<Hit>> getHitByQuery(String query);
}
