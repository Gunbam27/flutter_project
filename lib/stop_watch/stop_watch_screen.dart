import 'dart:async';

import 'package:flutter/material.dart';

class StopWatchScreen extends StatefulWidget {
  const StopWatchScreen({super.key});

  @override
  State<StopWatchScreen> createState() => _StopWatchScreenState();
}

class _StopWatchScreenState extends State<StopWatchScreen> {
  Timer? _timer;

  int _time = 5800;
  bool _isRunning = false;

  List<int> _lapTimes = [];

  //var _lapTimes2 = List.generate(_lapTimes.length, (i) => Text(i));

  void _clickButton() {
    _isRunning = !_isRunning;

    if (_isRunning) {
      _start();
    } else {
      _pause();
    }
  }

  void _start() {
    _timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      setState(() {
        _time++;
      });
    });
  }

  void _pause() {
    _timer?.cancel();
  }

  void _reset() {
    _isRunning = false;
    _timer?.cancel();
    _lapTimes.clear();
    _time = 0;
  }

  void _recordLapTime(int _time) {
    _lapTimes.insert(0, _time);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Widget formatting() {
    return ListView(
      children: _lapTimes
          .map(
            (e) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('${List.from(_lapTimes.reversed).indexOf(e) + 1}'
                    .padLeft(2, '0'),style:TextStyle(fontSize:17)),
                Text('${toMin(e)}:${toSec(e)}.${toMillisec(e)}',style:TextStyle(fontSize:17))
              ],
            ),
          )
          .toList(),
    );
  }

  String toMin(int time) {
    return '${(time ~/ 6000).remainder(60)}'.padLeft(2, '0');
  }

  String toSec(int time) {
    return '${(time ~/ 100).remainder(60)}'.padLeft(2, '0');
  }

  String toMillisec(int time) {
    return '${time % 100}'.padLeft(2, '0');
  }

  @override
  Widget build(BuildContext context) {
    String min = '${(_time ~/ 6000).remainder(60)}'.padLeft(2, '0');
    String sec = '${(_time ~/ 100).remainder(60)}'.padLeft(2, '0');
    String millisec = '${(_time % 100)}'.padLeft(2, '0');
    return Scaffold(
      appBar: AppBar(
        title: const Text('StopWatch'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                min,
                style: TextStyle(fontSize: 50),
              ),
              const Text(
                ':',
                style: TextStyle(fontSize: 50),
              ),
              Text(
                sec,
                style: TextStyle(fontSize: 50),
              ),
              const Text(
                '.',
                style: TextStyle(fontSize: 50),
              ),
              Text(
                millisec,
                style: TextStyle(fontSize: 50),
              ),
            ],
          ),
          SizedBox(height:40),
          Column(
            children: [
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('구간',style:TextStyle(fontSize:18,fontWeight:FontWeight.w600)),
                    Text('전체 시간',style:TextStyle(fontSize:18,fontWeight:FontWeight.w600)),
                  ],
                ),
              ),
              SizedBox(height:20),
              SizedBox(
                height: 400,
                child: formatting(),
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _reset();
                  });
                },
                child: const Icon(Icons.refresh),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _clickButton();
                  });
                },
                child: _isRunning
                    ? const Icon(Icons.pause)
                    : const Icon(Icons.play_arrow),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _recordLapTime(_time);
                  });
                },
                child: const Icon(Icons.add),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
