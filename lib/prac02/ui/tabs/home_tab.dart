import 'package:flutter/material.dart';
import 'package:flutter_project/prac02/ui/component/ThumbWiget.dart';

import '../../repository/thumbRepository.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
        child: SizedBox(
      height: 800,
      child: ThumbList(
        thumbList: ThumbRepository().getThumbList(),
      ),
    ));
  }
}
