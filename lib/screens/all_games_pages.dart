import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ju_app/screens/sub_pages/basketball_page.dart';
import 'package:ju_app/screens/sub_pages/football_page.dart';
import 'package:ju_app/screens/sub_pages/handball_page.dart';
import 'package:ju_app/screens/sub_pages/tennis_page.dart';
import 'package:ju_app/screens/sub_pages/volleyball_page.dart';
import 'package:ju_app/utils/utils.dart';

class AllGamesScreen extends StatefulWidget {
  const AllGamesScreen({Key? key}) : super(key: key);

  @override
  State<AllGamesScreen> createState() => _AllGamesScreenState();
}

class _AllGamesScreenState extends State<AllGamesScreen> {
  int currentIndex = 0;

  List<Widget> subScreens = [
    FootballScreen(),
    HandballScreen(),
    VolleyballScreen(),
    BasketballScreen(),
    TennisScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  headerItemBuilder(
                    context,
                    'assets/icons/discount.6.svg',
                    'Football',
                    0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  headerItemBuilder(
                    context,
                    'assets/icons/discount.6.svg',
                    'Handball',
                    1,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  headerItemBuilder(
                    context,
                    'assets/icons/discount.6.svg',
                    'Volleyball',
                    2,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  headerItemBuilder(
                    context,
                    'assets/icons/discount.6.svg',
                    'Basketball',
                    3,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  headerItemBuilder(
                    context,
                    'assets/icons/discount.6.svg',
                    'Tennis',
                    4,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: subScreens[currentIndex],
          ),
        ],
      ),
    );
  }

  Widget headerItemBuilder(
      BuildContext context, String icon, String title, int index) {
    return Container(
      height: 60,
      width: 60,
      alignment: Alignment.center,
      padding: EdgeInsets.all(05.0),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            currentIndex = index;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              icon,
              color: Theme.of(context).iconTheme.color,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 08,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
