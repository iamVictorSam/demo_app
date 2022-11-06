import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:demo_app/screens/reg/reg.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      // splashIconSize: MediaQuery.of(context).size.height * 0.5,
      backgroundColor: Colors.black,
      splash: FlutterLogo(
        size: MediaQuery.of(context).size.height,
      ),
      nextScreen: const RegScreen(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
