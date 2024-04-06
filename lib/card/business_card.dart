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
      home: const BusinessScreen(),
    );
  }
}

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Background(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Transform.translate(
                      offset: const Offset(0, -70),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProfileImage(),
                          ProfileText(),
                        ],
                      )),
                  const Icon(Icons.edit),
                ],
              ),
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
      width: double.infinity,
      height: 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://cdn.imweb.me/upload/S20210406ae69853331cfb/d24b50c47fb2e.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Colors.white,
      radius: 64,
      child: CircleAvatar(
          backgroundImage: AssetImage('assets/image/profile.jpg'), radius: 60),
    );
  }
}

class ProfileText extends StatelessWidget {
  const ProfileText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '신예진(Yejin Shin)',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          Text(
            'Mobile Developer | Flutter',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '대한민국 경기도 고양시',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'https://github.com/Gunbam27',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xff1b75cf),
            ),
          ),
        ],
      ),
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
