import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:ju_app/screens/about_page.dart';
import 'package:ju_app/screens/sub_pages/components/theme_page.dart';
import 'package:ju_app/utils/utils.dart';

class DetailsScreen extends StatelessWidget {
  double appBarHeightSize = 0;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            'assets/icons/arrow-left-2.2.svg',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // height: 100,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
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
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    'JEUX UNIVERSITAIRES',
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.5,
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).iconTheme.color,
                      fontFamily: 'OpenSans_Regular',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Phase de Poule - Jour 2 sur 6',
                      style: TextStyle(
                        fontSize: 11,
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
                              style: TextStyle(),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '8 Oct 14:00',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'OpenSans_Regular,',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Dans quelques instants',
                              style: TextStyle(
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
                              style: TextStyle(),
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
                        Container(
                          height: 40,
                          width: 40,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            borderRadius: BorderRadius.circular(10000.0),
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(
                              'assets/icons/bookmark.4.svg',
                              color: Theme.of(context).iconTheme.color,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Container(
                            height: 40,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 250, 70, 57),
                              borderRadius: BorderRadius.circular(10000.0),
                            ),
                            child: InkWell(
                              onTap: () {},
                              child: Text(
                                'Direct',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            borderRadius: BorderRadius.circular(10000.0),
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(
                              'assets/icons/arrow-right.svg',
                              color: Theme.of(context).iconTheme.color,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Theme.of(context).iconTheme.color!.withOpacity(.05),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: 10.0,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'SCORES',
                        textAlign: TextAlign.center,
                        textScaleFactor: 1.5,
                        style: TextStyle(
                          fontSize: 10,
                          color: Theme.of(context).iconTheme.color,
                          fontFamily: 'OpenSans_Regular',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                        width: 15,
                        child: SvgPicture.asset(
                          'assets/icons/activity.svg',
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '0',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).iconTheme.color,
                          fontFamily: 'OpenSans_Regular',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '-',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Theme.of(context).iconTheme.color,
                          fontFamily: 'OpenSans_Regular',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '0',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).iconTheme.color,
                          fontFamily: 'OpenSans_Regular',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Messi",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Theme.of(context).iconTheme.color,
                                  fontFamily: 'OpenSans_Regular',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 50.0,
                              ),
                              Text(
                                "54'",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Theme.of(context).iconTheme.color,
                                  fontFamily: 'OpenSans_Regular',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Text(
                                "Ronaldo",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Theme.of(context).iconTheme.color,
                                  fontFamily: 'OpenSans_Regular',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 50.0,
                              ),
                              Text(
                                "64'",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Theme.of(context).iconTheme.color,
                                  fontFamily: 'OpenSans_Regular',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Text(
                                "64'",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Theme.of(context).iconTheme.color,
                                  fontFamily: 'OpenSans_Regular',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 50.0,
                              ),
                              Text(
                                'Neymar',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Theme.of(context).iconTheme.color,
                                  fontFamily: 'OpenSans_Regular',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Text(
                                "90'",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Theme.of(context).iconTheme.color,
                                  fontFamily: 'OpenSans_Regular',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 50.0,
                              ),
                              Text(
                                'Mbappe',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Theme.of(context).iconTheme.color,
                                  fontFamily: 'OpenSans_Regular',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 200,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Theme.of(context).iconTheme.color!.withOpacity(.05),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: 10.0,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ACTUALITES',
                        textAlign: TextAlign.center,
                        textScaleFactor: 1.5,
                        style: TextStyle(
                          fontSize: 10,
                          color: Theme.of(context).iconTheme.color,
                          fontFamily: 'OpenSans_Regular',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                        width: 15,
                        child: SvgPicture.asset(
                          'assets/icons/document.svg',
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          newsItemBuilder(context),
                          newsItemBuilder(context),
                          newsItemBuilder(context),
                          newsItemBuilder(context),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Theme.of(context).iconTheme.color!.withOpacity(.05),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: 10.0,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'STATISTIQUES',
                        textAlign: TextAlign.center,
                        textScaleFactor: 1.5,
                        style: TextStyle(
                          fontSize: 10,
                          color: Theme.of(context).iconTheme.color,
                          fontFamily: 'OpenSans_Regular',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                        width: 15,
                        child: SvgPicture.asset(
                          'assets/icons/chart.1.svg',
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Univ. Dla',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        'Univ. Ndere',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '_',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'Tirs',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          '_',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '_',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'Corners',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          '_',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '_',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'Penalty',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          '_',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '_',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'Coup francs',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          '_',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '_',
                          style: TextStyle(fontSize: 10),
                        ),
                        Container(
                          height: 30,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                        ),
                        Text(
                          '_',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '_',
                          style: TextStyle(fontSize: 10),
                        ),
                        Container(
                          height: 30,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                        ),
                        Text(
                          '_',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget newsItemBuilder(BuildContext context) {
    return Container(
      height: 150,
      width: 300,
      alignment: Alignment.center,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.symmetric(
        horizontal: 5.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Theme.of(context).iconTheme.color!.withOpacity(.05),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Coup franc en faveur de l'équipe de l'Unversité de Ngaoundéré aprés une grave faute commise par un jouer de l'équipe adverse.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  DateFormat.yMMMMEEEEd().format(DateTime.now()),
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            width: 60,
            alignment: Alignment.center,
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Image.asset(
              'assets/images/udo.png',
            ),
          ),
        ],
      ),
    );
  }
}
