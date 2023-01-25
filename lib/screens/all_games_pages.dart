import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ju_app/screens/sub_pages/football_page.dart';
import 'package:ju_app/utils/utils.dart';

class AllGamesScreen extends StatelessWidget {
  int index = 0;
  List<Widget> subScreens = [
    FootballScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Row(
              children: [
                headerItemBuilder(
                  context,
                  'assets/icons/discount.6.svg',
                  'Football',
                  0,
                ),
              ],
            ),
          ),
          subScreens[index],
        ],
      ),
    );
  }

  Widget headerItemBuilder(
      BuildContext context, String icon, String title, int index) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FootballScreen(),
          ),
        );
      },
      child: Container(
        height: 75,
        width: 75,
        alignment: Alignment.center,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
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
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
