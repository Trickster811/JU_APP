import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ju_app/screens/about_page.dart';
import 'package:ju_app/screens/all_games_pages.dart';
import 'package:ju_app/screens/calendar_page.dart';
import 'package:ju_app/screens/sub_pages/theme_page.dart';
import 'package:ju_app/screens/new_page.dart';
import 'package:ju_app/screens/team_details_page.dart';
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
      'JU Ndere',
      'Actualités',
      'Calendrier',
      'Details',
    ];
    List<List> menuItemList = [
      [
        'assets/icons/discount.5.svg',
        'Thème',
        ThemeScreen(),
      ],
      [
        'assets/icons/info-square.4.svg',
        'A propos',
        AboutScreen(),
      ],
    ];

    final listOfScreens = [
      AllGamesScreen(),
      LiveScreen(),
      CalendarScreen(),
      TeamDetailsScreen(),
    ];
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
            color: Theme.of(context).iconTheme.color,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              UtilFunctions.openDialog(context, menuItemList, appBarHeightSize);
            },
            icon: SvgPicture.asset(
              'assets/icons/category.2.svg',
              color: Theme.of(context).iconTheme.color,
            ),
          ),
        ],
      ),
      body: listOfScreens[currentState],
      bottomNavigationBar: Container(
        height: 50,
        width: deviceSize.width,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
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
            InkWell(
              onTap: () {
                setState(() {
                  currentState = 0;
                });
              },
              child: currentState != 0
                  ? SvgPicture.asset(
                      'assets/icons/game.2.svg',
                      color: Theme.of(context).iconTheme.color,
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 5,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Theme.of(context).iconTheme.color!,
                            borderRadius: BorderRadius.circular(1000),
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context).iconTheme.color!,
                                blurRadius: 10, blurStyle: BlurStyle.inner,
                                // spreadRadius: 1,
                                offset: Offset(
                                  0,
                                  5,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        SvgPicture.asset(
                          'assets/icons/game.svg',
                          color: Theme.of(context).iconTheme.color,
                        ),
                        Spacer(),
                      ],
                    ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentState = 1;
                });
              },
              child: currentState != 1
                  ? SvgPicture.asset(
                      'assets/icons/document.svg',
                      color: Theme.of(context).iconTheme.color,
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 5,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Theme.of(context).iconTheme.color!,
                            borderRadius: BorderRadius.circular(1000),
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context).iconTheme.color!,
                                blurRadius: 10, blurStyle: BlurStyle.inner,
                                // spreadRadius: 1,
                                offset: Offset(
                                  0,
                                  5,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        SvgPicture.asset(
                          'assets/icons/document.3.svg',
                          color: Theme.of(context).iconTheme.color,
                        ),
                        Spacer(),
                      ],
                    ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentState = 2;
                });
              },
              child: currentState != 2
                  ? SvgPicture.asset(
                      'assets/icons/calendar.svg',
                      color: Theme.of(context).iconTheme.color,
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 5,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Theme.of(context).iconTheme.color!,
                            borderRadius: BorderRadius.circular(1000),
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context).iconTheme.color!,
                                blurRadius: 10, blurStyle: BlurStyle.inner,
                                // spreadRadius: 1,
                                offset: Offset(
                                  0,
                                  5,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        SvgPicture.asset(
                          'assets/icons/calendar.6.svg',
                          color: Theme.of(context).iconTheme.color,
                        ),
                        Spacer(),
                      ],
                    ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentState = 3;
                });
              },
              child: currentState != 3
                  ? SvgPicture.asset(
                      'assets/icons/3-user.2.svg',
                      color: Theme.of(context).iconTheme.color,
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 5,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Theme.of(context).iconTheme.color!,
                            borderRadius: BorderRadius.circular(1000),
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context).iconTheme.color!,
                                blurRadius: 10, blurStyle: BlurStyle.inner,
                                // spreadRadius: 1,
                                offset: Offset(
                                  0,
                                  5,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        SvgPicture.asset(
                          'assets/icons/3-user.5.svg',
                          color: Theme.of(context).iconTheme.color,
                        ),
                        Spacer(),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
