import 'package:flutter/material.dart';
import 'package:languages_app/pages/splash_page.dart';

void main() {
  runApp(const LanguagesApp());
}

class LanguagesApp extends StatelessWidget {
  const LanguagesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
