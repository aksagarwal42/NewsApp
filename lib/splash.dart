import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:conmetlabs_news/navbar.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(),
          Image.asset(
            'assets/images/splash_screen_image_2.png',
            scale: 2.9,
          ),
          Container(
            child: Text(
              'Welcome!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
        ],
      ),
      duration: 2000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
      splashIconSize: MediaQuery.of(context).size.height,
      nextScreen: NavigationBarPage(),
    );
  }
}
