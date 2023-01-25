import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Details',
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
    );
  }
}
