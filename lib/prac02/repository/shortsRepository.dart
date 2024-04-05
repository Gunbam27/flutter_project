import 'package:flutter_project/prac02/data/model/shorts.dart';

class ShortsRepository{
  List<ShortsModel> getShortsList(){
    return [
      ShortsModel(shortsPath: "https://images.unsplash.com/photo-1628105541664-ae6ee8d249ec?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fDklM0ExNnxlbnwwfHwwfHx8MA%3D%3D", userImagePath: "https://yt3.ggpht.com/0aWtdM_SfqVXYsTtkZElEuOsSXiRj5afnnp1Xw8Kqw2kKyKFqVA0pWsrZWejJCzSlQwqam9r_w=s48-c-k-c0x00ffffff-no-rj", title: "정신이 오락/가락", userName:"@arimovie77",likes: "19만", reviews: "3,510"),
      ShortsModel(shortsPath: "https://images.unsplash.com/photo-1581260466152-d2c0303e54f5?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8OSUzQTE2fGVufDB8fDB8fHww", userImagePath: "https://yt3.ggpht.com/0aWtdM_SfqVXYsTtkZElEuOsSXiRj5afnnp1Xw8Kqw2kKyKFqVA0pWsrZWejJCzSlQwqam9r_w=s48-c-k-c0x00ffffff-no-rj", title: "플러터 사용하기", userName:"@arimovie77",likes: "19만", reviews: "3,510"),
      ShortsModel(shortsPath: "https://images.unsplash.com/photo-1684403559673-ddec101ab7b0?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwcm9maWxlLXBhZ2V8Mnx8fGVufDB8fHx8fA%3D%3D", userImagePath: "https://yt3.ggpht.com/0aWtdM_SfqVXYsTtkZElEuOsSXiRj5afnnp1Xw8Kqw2kKyKFqVA0pWsrZWejJCzSlQwqam9r_w=s48-c-k-c0x00ffffff-no-rj", title: "힐링이라더니...거짓말..", userName:"@arimovie77",likes: "19만", reviews: "3,510"),
      ShortsModel(shortsPath: "https://images.unsplash.com/photo-1677090018499-ada1774c0c09?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTh8fHxlbnwwfHx8fHw%3D", userImagePath: "https://yt3.ggpht.com/0aWtdM_SfqVXYsTtkZElEuOsSXiRj5afnnp1Xw8Kqw2kKyKFqVA0pWsrZWejJCzSlQwqam9r_w=s48-c-k-c0x00ffffff-no-rj", title: "너무 졸리다", userName:"@arimovie77",likes: "19만", reviews: "3,510"),
      //ShortsModel(shortsPath: shortsPath, userImagePath: userImagePath, title: title, likes: likes, reviews: reviews),
      //ShortsModel(shortsPath: shortsPath, userImagePath: userImagePath, title: title, likes: likes, reviews: reviews),
      //ShortsModel(shortsPath: shortsPath, userImagePath: userImagePath, title: title, likes: likes, reviews: reviews),
      //ShortsModel(shortsPath: shortsPath, userImagePath: userImagePath, title: title, likes: likes, reviews: reviews),
    ];
  }
}