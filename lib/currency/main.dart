import 'package:flutter/material.dart';
import 'package:flutter_project/currency/data/data_source/exchange_api_impl.dart';
import 'package:flutter_project/currency/data/repository/exchange_repository_impl.dart';
import 'package:flutter_project/currency/presentaion/exchange_view_model.dart';
import 'package:flutter_project/currency/presentaion/main_screen.dart';
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
        create: (_) => ExchangeViewModel(
          repository: ExchangeRepositoryImpl(
            exchangeApi: ExchangeApiImpl(),
          ),
        ),
        child: MainScreen(),
      ),
    );
  }
}
