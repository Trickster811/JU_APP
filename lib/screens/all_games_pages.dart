import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ju_app/utils/utils.dart';

class AllGamesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            matchItemBuilder(context),
            SizedBox(
              height: 10.0,
            ),
            matchItemBuilder(context),
          ],
        ),
      ),
    );
  }

  Widget matchItemBuilder(
    BuildContext context,
  ) {
    return Container(
      // height: 100,
      alignment: Alignment.center,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.1),
            blurRadius: 10.0,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'Groupe A - Jour 2 sur 6',
              style: TextStyle(
                fontSize: 11,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    ClipOval(
                      child: Container(
                        height: 70,
                        width: 70,
                        child: Image.asset(
                          'assets/images/udo.png',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Univ. Dla',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '8 Oct 14:00',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'OpenSans_Regular,',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Dans quelques instants',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ClipOval(
                      child: Container(
                        height: 70,
                        width: 70,
                        child: Image.asset(
                          'assets/images/udo.png',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Univ. Ndere',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: secondColor,
                      borderRadius: BorderRadius.circular(10000.0),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/bookmark.4.svg',
                      color: primaryColor,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 100,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 224, 15, 0),
                      borderRadius: BorderRadius.circular(10000.0),
                    ),
                    child: Text(
                      'Direct',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 100,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10000.0),
                    ),
                    child: Text(
                      'Details',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: secondColor,
                      borderRadius: BorderRadius.circular(10000.0),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/arrow-right.svg',
                      color: primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
