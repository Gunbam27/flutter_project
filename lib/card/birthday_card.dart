import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BirthdayScreen(),
    );
  }
}

class BirthdayScreen extends StatelessWidget {
  const BirthdayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE7BDB6),
      body: Container(
        child: const Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              child: Background(),
            ),
            Positioned(left: 60, bottom: 80, child: LottieTest()),
            Positioned(
              top: 100,
              left: 0,
              right: 0,
                child: BirthdayText(),
              ),
          ],
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          //image: NetworkImage(
          //    "https://img.freepik.com/free-photo/pastel-plastic-texture-background-holographic-gradient_53876-106193.jpg?t=st=1712133865~exp=1712137465~hmac=4ade3895f333230cfcdcbaf016d0c62647c5da8b46287b202655557579bd01be&w=740"),
          image: AssetImage('assets/image/cake.jpeg'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

class BirthdayText extends StatelessWidget {
  const BirthdayText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Happy Birthday',
            style: TextStyle(
              fontSize: 48,
              color: Color(0xffB24648),
            ),
          ),
        ),
        Center(
          child: Text(
            'Yejin🥳',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w800,
              color: Color(0xffB24648),
            ),
          ),
        ),
      ],
    );
  }
}

class LottieTest extends StatefulWidget {
  const LottieTest({super.key});

  @override
  _LottieTestState createState() => _LottieTestState();
}

class _LottieTestState extends State<LottieTest> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Lottie.asset(
        'assets/lottie/cake.json',
        width: 400,
        height: 400,
      ),
    );
  }
}
