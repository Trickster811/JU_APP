// ************************************************************
// ************************************************************
// ***     Copyright 2023 One Chat. All rights reserved.    ***
// ***                  by Soft Up Tech.                    ***
// ************************************************************
// ************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ju_app/utils/utils.dart';
import 'package:ju_app/welcome_pages/loading_page.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await UtilFunctions.init();

  ThemeProvider.init();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String>? userInfo;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          title: 'JU APP',
          debugShowCheckedModeBanner: false,
          themeMode: themeProvider.themeMode,
          theme: MyThemes.lightTheme,
          darkTheme: MyThemes.darkTheme,
          home: LoadingScreen(
            userInfo: userInfo,
          ),
        );
      },
    );
  }
}
