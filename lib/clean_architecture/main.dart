import 'package:flutter/material.dart';
import 'package:flutter_project/clean_architecture/data/data_source/photo_api_impl.dart';
import 'package:flutter_project/clean_architecture/data/repository/photo_repository_impl.dart';
import 'package:flutter_project/clean_architecture/domain/use_case/get_photos_use_case.dart';
import 'package:flutter_project/clean_architecture/presentation/search_list_screen.dart';
import 'package:flutter_project/clean_architecture/presentation/search_list_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (_) {
          return SearchListViewModel(
            getPhotoUseCase: GetPhotoUseCase(
              PhotoRepositoryImpl(
                photoApi: PhotoApiImpl(),
              ),
            ),
          );
        },
        child: SearchListScreen(),
      ),
    );
  }
}
