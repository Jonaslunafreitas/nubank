import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank/pages/home/home_page.dart';
import 'package:nubank/pages/splash/splash_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.purple[800],
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nubank Exemple',
      theme:
          ThemeData(primarySwatch: Colors.purple, brightness: Brightness.dark),
      home: SplashPage(),
    );
  }
}
