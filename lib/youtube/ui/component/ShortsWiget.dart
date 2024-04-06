import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_project/youtube/data/model/shorts.dart';
import '../../data/model/thumb.dart';

class ShortsList extends StatelessWidget {
  final List<ShortsModel> shortsList;

  const ShortsList({super.key, required this.shortsList});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: PageScrollPhysics(),
      itemCount: shortsList.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: AspectRatio(
                      aspectRatio: 9 / 16,
                      child: Image.network(
                        shortsList[index].shortsPath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 70,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50.0),
                                      child: Image.network(
                                        shortsList[index].userImagePath,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: Text(
                                    shortsList[index].userName,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              child: Text(
                                shortsList[index].title,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    right: 20,
                    bottom: 160,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.thumb_up_off_alt_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Text(
                              shortsList[index].likes,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.thumb_down_off_alt_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Text(
                          '싫어요',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.rate_review_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Text(
                          shortsList[index].reviews,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.share_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Text(
                          '공유',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ))
              ],
            ),
          ],
        );
      },
    );
  }
}
