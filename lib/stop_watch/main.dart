import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project/stop_watch/stop_watch_screen.dart';

void main() {
  Timer.periodic(Duration(seconds: 1), (timer) {
    print('!!!');
  });
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
      home: StopWatchScreen(),
    );
  }
}
