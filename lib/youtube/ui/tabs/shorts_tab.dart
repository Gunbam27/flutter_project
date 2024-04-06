import 'package:flutter/material.dart';
import 'package:flutter_project/youtube/ui/component/ShortsWiget.dart';

import '../../repository/shortsRepository.dart';

class ShortsTab extends StatelessWidget {
  const ShortsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: PageScrollPhysics(),
        child: SizedBox(
          height: 800,
          child: ShortsList(
            shortsList: ShortsRepository().getShortsList(),
          ),
        ));
  }
}
