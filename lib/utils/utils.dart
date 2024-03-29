import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UtilFunctions {
  static late SharedPreferences _preferences;
  static const themeMode = 'isDark';

  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future setTheme(int isDark) async {
    await _preferences.setInt(themeMode, isDark);
  }

  static int? getTheme() => _preferences.getInt(themeMode);

  static Future setFirstTime(bool firstTime) async {
    await _preferences.setBool('firstTime', firstTime);
  }

  static bool? getFirstTime() => _preferences.getBool('firstTime');

  static Future setUserInfo(List<String> userInfo) async {
    await _preferences.setStringList('userInfo', userInfo);
  }

  static List<String>? getUserInfo() => _preferences.getStringList('userInfo');

  static saveDocument({required String name, required String filePath}) async {
    Directory? directory;

    try {
      if (Platform.isAndroid) {
        if (await _requestPermission(Permission.storage)) {
          directory = Directory('/sdcard/Ndere Ads/App Images');
        }
      } else {
        if (await _requestPermission(Permission.photos)) {
          directory = await getApplicationDocumentsDirectory();
        }
      }
      final fileSaved = File(directory!.path + "/$name");
      return File(filePath).copy(fileSaved.path);
    } catch (e) {}
  }

  static Future<bool> _requestPermission(Permission permission) async {
    if (await permission.isGranted) {
      await appFolder();
      return true;
    } else {
      final result = await permission.request();
      if (result == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  static appFolder() async {
    final Directory documentDirectory =
        Directory('/sdcard/Ndere Ads/App Documents');
    final Directory imageDirectory = Directory('/sdcard/Ndere Ads/App Images');

    final status = await Permission.storage.request();

    if (status == PermissionStatus.granted) {
      if (!await Directory('/sdcard/Ndere Ads').exists()) {
        await Directory('/sdcard/Ndere Ads').create(recursive: true);
      }
      if (!await imageDirectory.exists()) {
        imageDirectory.create(recursive: true);
      }
      if (!await documentDirectory.exists()) {
        documentDirectory.create(recursive: true);
      }
    } else {
      print('Denied');
    }
  }

  static baseNameProvider(path) {
    return basename(
        path); // This function return the the basename path of a file.
  }

  static selectFile(List<String>? allowedExtensions) async {
    final result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      allowedExtensions: allowedExtensions,
    );
    if (result == null) return;
    final path = result.files.single.path!;
    return File(path);
  }

  static Future openDialog(
      BuildContext context, List<List> menuItemList, double appBarHeightSize) {
    return showMenu(
      context: context,
      position: RelativeRect.fromLTRB(1, appBarHeightSize, 0, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      items: [
        for (final element in menuItemList) _buildPopMenuItem(context, element),
      ],
    );
  }

  static PopupMenuItem _buildPopMenuItem(BuildContext context, List item) {
    return PopupMenuItem(
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((context) => item[2]),
            ),
          );
        },
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              item[0],
              color: Theme.of(context).iconTheme.color,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              item[1],
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Comfortaa_bold',
                // color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  static showFlashMessage(
      BuildContext context, String message, Color color, Size deviceSize) {
    final snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      content: Container(
        height: 40,
        width: deviceSize.width,
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color.withOpacity(.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          message,
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Comfortaa_bold',
          ),
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

class ThemeProvider extends ChangeNotifier {
  static int? isDark;

  static Future init() async {
    isDark = UtilFunctions.getTheme();
  }

  ThemeMode themeMode =
      isDark == null || isDark == 0 ? ThemeMode.light : ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) async {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    UtilFunctions.setTheme(isOn ? 1 : 0);
    notifyListeners();
    // final theme = await SharedPreferences.getInstance();
    // theme.setBool('isDark', isOn);
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Color.fromRGBO(12, 12, 12, 1),
    primaryColor: Color.fromARGB(255, 27, 27, 27),
    fontFamily: 'Comfortaa_bold',
    colorScheme: ColorScheme.dark(),
    bottomAppBarColor: Colors.black,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Color.fromARGB(255, 241, 241, 241),
    fontFamily: 'Comfortaa_bold',
    primaryColor: Colors.white,
    colorScheme: ColorScheme.light(),
    bottomAppBarColor: Colors.white,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  );
}
