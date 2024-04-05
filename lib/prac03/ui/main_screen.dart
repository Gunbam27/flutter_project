import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Starbucks',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_rounded,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_rounded,
              size: 30,
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 425,
            expandedHeight: 685,
            flexibleSpace: HomeReward(),
          ),
          SliverToBoxAdapter(
            // 리스트형 자료 표현
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Promotion',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff2E2D38),
                      ),
                    ),
                    Image(
                      image: AssetImage('assets/image/promotion.png'),
                    )
                  ],
                ),
              ),

              // 리스트의 아이템 개수
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            // 그림자효과
            BoxShadow(
              color: Colors.black54,
              blurRadius: 20.0,
              spreadRadius: 10.0,
              offset: Offset(24.0, 25.0),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                label: 'star',
                icon: Icon(
                  Icons.star_border,
                  size: 34,
                ),
              ),
              BottomNavigationBarItem(
                label: 'order',
                icon: Icon(
                  Icons.coffee_rounded,
                  size: 34,
                ),
              ),
              BottomNavigationBarItem(
                label: 'stamp',
                icon: Icon(
                  Icons.wallet_membership_rounded,
                  size: 34,
                ),
              ),
              BottomNavigationBarItem(
                label: 'location',
                icon: Icon(
                  Icons.location_on_outlined,
                  size: 34,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeReward extends StatelessWidget {
  const HomeReward({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 17),
              child: Image(
                image: AssetImage('assets/image/moneycard.png'),
              ),
            ),
            Positioned(
              left: 40,
              top: 110,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Starbuks Reward',
                          style:
                              TextStyle(fontSize: 16, color: Color(0xffF4F9F5)),
                        ),
                        Text(
                          '5,350 TL',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            color: Color(0xffF4F9F5),
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          '내용 보기 →',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffF4F9F5),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Image(
              image: AssetImage('assets/image/chart.png'),
              width: 170,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.star,
                        size: 32,
                      ),
                      color: Color(0xffC1A063),
                    ),
                    Text(
                      '0',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    )
                  ],
                ),
                Text(
                  'Star Reward',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              width: 28,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.card_membership,
                        size: 32,
                      ),
                      color: Color(0xff1D4D4F),
                    ),
                    Text(
                      '2',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    )
                  ],
                ),
                Text(
                  'Coupon',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
