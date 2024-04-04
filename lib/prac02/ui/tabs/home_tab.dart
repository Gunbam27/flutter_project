import 'package:flutter/material.dart';
import 'package:flutter_project/prac02/ui/component/ThumbWiget.dart';

import '../../repository/thumbRepository.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      //physics:AlwaysScrollableScrollPhysics(),
      child: Column(
        children: [
          SizedBox(child: ThumbList(thumbList: ThumbRepository().getThumbList())),
        ],
      ),
    );
  }
}

