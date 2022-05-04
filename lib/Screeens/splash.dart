import 'package:application/Screeens/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image.asset(
            'assets/images/hogLogo.jpg',
          ),
          SizedBox(
            height: 250,
          ),
          Image.network(
            "https://c.tenor.com/0RxAveI4iJEAAAAi/motorcycle-riding.gif",
            height: 50,
          ),
        ],
      ),
      nextScreen: Login(),
      splashIconSize: 500,
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Color.fromRGBO(19, 22, 40, 1),
    );
  }
}
