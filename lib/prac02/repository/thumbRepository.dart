import 'package:flutter_project/prac02/data/model/thumb.dart';

class ThumbRepository{
  List<ThumbModel> getThumbList(){
    return [
      ThumbModel(thumbImagePath: "https://i.ytimg.com/an_webp/_4zgyazl5sU/mqdefault_6s.webp?du=3000&sqp=CMTnubAG&rs=AOn4CLB8tpNz0GINWsBzhfGc21MC-zXqgw", userImagePath: "https://yt3.googleusercontent.com/jkm624eun6qpKa0i7PtIXYGBl-hiFHYmjvyYNiN1oO16_J1K98Dta1KnH4hvNXcHqiRTdDZdA8k=s176-c-k-c0x00ffffff-no-rj", title: "[EN] 키192cm 아빠 어디가 준수X이종혁 부자 단독 공개 | 아침먹고 가2 EP.11", userName: "스튜디오 수제", viewCount: "119만 회"),
      // Thumb(thumbImagePath: thumbImagePath, userImagePath: userImagePath, title: title, userName: userName, viewCount: viewCount),
      // Thumb(thumbImagePath: thumbImagePath, userImagePath: userImagePath, title: title, userName: userName, viewCount: viewCount),
      // Thumb(thumbImagePath: thumbImagePath, userImagePath: userImagePath, title: title, userName: userName, viewCount: viewCount),
    ];
  }
}