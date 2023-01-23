import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ju_app/screens/about_page.dart';
import 'package:ju_app/utils/utils.dart';

class MyHomePage extends StatefulWidget {
  final List<String>? userInfo;

  const MyHomePage({
    Key? key,
    required this.userInfo,
  }) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentState = 0;
  bool firstTimeIndex = false;
  List<String> userLoginInfo = [];

  double appBarHeightSize = 0;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final listOfScreensTitle = [
      'Acceuil',
      'Poster',
      'Recherche',
      'Service',
    ];
    List<List> menuItemList = [
      [
        'assets/icons/info-square.4.svg',
        'A propos',
        AboutScreen(),
      ],
    ];

    final listOfScreens = [];
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          listOfScreensTitle[currentState],
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/category.2.svg',
            ),
          ),
        ],
      ),
      body: listOfScreens[currentState],
      bottomNavigationBar: Container(
        height: 50,
        width: deviceSize.width,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(100000),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 30,
              offset: Offset(0, 10),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  currentState = 0;
                });
              },
              icon: currentState != 0
                  ? SvgPicture.asset(
                      'assets/icons/bag.1.svg',
                      color: Colors.white,
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 5,
                          width: 15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(1000),
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/icons/bag.4.svg',
                          color: Colors.white,
                        ),
                      ],
                    ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentState = 1;
                });
              },
              icon: currentState != 1
                  ? SvgPicture.asset(
                      userLoginInfo.isNotEmpty &&
                              userLoginInfo[0] == 'Secretariat'
                          ? 'assets/icons/activity.6.svg'
                          : 'assets/icons/plus.svg',
                      color: Colors.white,
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 5,
                          width: 15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(1000),
                          ),
                        ),
                        SvgPicture.asset(
                          userLoginInfo.isNotEmpty &&
                                  userLoginInfo[0] == 'Secretariat'
                              ? 'assets/icons/activity.2.svg'
                              : 'assets/icons/plus.3.svg',
                          color: Colors.white,
                        ),
                      ],
                    ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentState = 2;
                });
              },
              icon: currentState != 2
                  ? SvgPicture.asset(
                      'assets/icons/search.1.svg',
                      color: Colors.white,
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 5,
                          width: 15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(1000),
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/icons/search.6.svg',
                          color: Colors.white,
                        ),
                      ],
                    ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentState = 3;
                });
              },
              icon: currentState != 3
                  ? SvgPicture.asset(
                      userLoginInfo.isNotEmpty &&
                              userLoginInfo[0] == 'Secretariat'
                          ? 'assets/icons/time-circle.4.svg'
                          : 'assets/icons/buy.1.svg',
                      color: Colors.white,
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 5,
                          width: 15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(1000),
                          ),
                        ),
                        SvgPicture.asset(
                          userLoginInfo.isNotEmpty &&
                                  userLoginInfo[0] == 'Secretariat'
                              ? 'assets/icons/time-circle.5.svg'
                              : 'assets/icons/buy.svg',
                          color: Colors.white,
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
