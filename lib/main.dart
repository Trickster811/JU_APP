import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ju_app/utils/utils.dart';
import 'package:ju_app/welcome_pages/loading_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
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
    return MaterialApp(
      title: 'JU APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        fontFamily: 'Comfortaa_bold',
        // scaffoldBackgroundColor: Color.fromARGB(230, 255, 255, 255),
      ),
      home: LoadingScreen(
        userInfo: userInfo,
      ),
    );
  }
}
