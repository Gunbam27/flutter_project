import 'package:flutter/material.dart';
import 'package:flutter_project/bmi_calculator/result/result_view_model.dart';

class ResultScreen extends StatefulWidget {
  final ResultViewModel resultViewModel;
  final double height;
  final double weight;

  const ResultScreen(
      {super.key,
      required this.height,
      required this.weight,
      required this.resultViewModel});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  void initState() {
    super.initState();
    widget.resultViewModel.calculate(widget.height, widget.weight);

    ///widget.resultViewModel.addListener(() {widget.resultViewModel.calculate(widget.height, widget.weight);});
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Widget _buildIcon(double bmi) {
    Icon icon = const Icon(
      Icons.sentiment_dissatisfied,
      color: Colors.orange,
      size: 100,
    );

    if (bmi >= 23) {
      icon = const Icon(
        Icons.sentiment_very_dissatisfied,
        color: Colors.red,
        size: 100,
      );
    } else if (bmi >= 18.5) {
      icon = const Icon(
        Icons.sentiment_satisfied,
        color: Colors.green,
        size: 100,
      );
    }
    return icon;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('결과'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              widget.resultViewModel.result,
              style: const TextStyle(fontSize: 36),
            ),
            _buildIcon(widget.resultViewModel.bmi),
          ],
        ),
      ),
    );
  }
}
