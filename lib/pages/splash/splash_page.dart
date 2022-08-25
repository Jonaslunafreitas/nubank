import 'package:flutter/material.dart';

import '../home/home_page.dart';

class SplashPage extends StatefulWidget {
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    delay();
  }

  Future<void> delay() async {
    return await Future.delayed(
      Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(pageBuilder: (BuildContext context,
              Animation animation, Animation secondaryAnimation) {
            return HomePage();
          }),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Center(
        child: Image.network(
          "https://raw.githubusercontent.com/Jonaslunafreitas/TrabalhoFrontEnd/main/nubank-logo-0-1-768x768.png",
          height: 100,
          color: Colors.white,
        ),
      ),
    );
  }
}
