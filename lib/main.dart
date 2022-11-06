import 'package:demo_app/screens/splash/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.teal,
          inputDecorationTheme: const InputDecorationTheme(
            enabledBorder: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(),
          )),
      home: const SplashScreen(),
    );
  }
}
