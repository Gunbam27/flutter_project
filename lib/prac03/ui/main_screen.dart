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
      body: Column(
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
                            style: TextStyle(
                                fontSize: 16, color: Color(0xffF4F9F5)),
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
              Image(image: AssetImage('assets/image/chart.png'),width: 170,),
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.star),color: Color(0xffC1A063),),
                  Text('0')
                ],
              )
            ],
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
