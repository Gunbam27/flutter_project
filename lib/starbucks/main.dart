import 'package:flutter/material.dart';
import 'package:flutter_project/starbucks/ui/main_screen.dart';

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
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
          appBarTheme: AppBarTheme(
            foregroundColor: Color(0xff1D4D4F),
            backgroundColor: Color(0xffffffff),
            surfaceTintColor: Color(0xffffffff),
          ),
          textTheme: TextTheme(
              // displayLarge: const TextStyle(
              //   color: Color(0xff1D4D4F),
              // ),
              ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            shape: CircleBorder(),
            backgroundColor: Color(0xff4AA366),
          ),
          scaffoldBackgroundColor: Color(0xffFFFFFF),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Color(0xff4AA366),
            unselectedItemColor: Color(0xff6F8094),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Color(0xffffffff),
          )),
      home: MainScreen(),
    );
  }
}
