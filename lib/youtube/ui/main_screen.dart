import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_project/youtube/ui/tabs/home_tab.dart';
import 'package:flutter_project/youtube/ui/tabs/shorts_tab.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _tabs = <Widget>[
    HomeTab(),
    ShortsTab(),
    Text(
      'Index 2: School',
    ),
    Text(
      'Index 2: School',
    ),
    Text(
      'Index 2: School',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      appBar: AppBar(
        leadingWidth: 140,
        backgroundColor: Color(0xff000000),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.black.withOpacity(0.2),
            child: Ink(
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/youtube.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.sensors_rounded,
              size: 24,
              color: Colors.white70,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_rounded,
              size: 24,
              color: Colors.white70,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_rounded,
              size: 24,
              color: Colors.white70,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: InkWell(
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Container(
                  width: 35,
                  child: Image(
                    image: AssetImage('assets/image/profile.jpg'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: _tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flash_on_rounded),
            label: 'Shorts',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_rounded,size: 40,),
            label: '',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline_rounded),
            label: '구독',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_to_photos_rounded),
            label: '보관함',
            backgroundColor: Colors.black,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        backgroundColor: Colors.black,
        showUnselectedLabels:true,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}
