import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../data/model/thumb.dart';

class ThumbList extends StatelessWidget {
  final List<ThumbModel> thumbList;

  const ThumbList({super.key, required this.thumbList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: thumbList.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.network(
                    thumbList[index].thumbImagePath,
                    fit: BoxFit.cover,
                  ),
                  //SizedBox(height: 100,child: Image.network(thumbList[index].thumbImagePath,fit: BoxFit.cover,)),
                ],
              ),
              Row(),
            ],
          ),
        );
      },
    );
  }
}
