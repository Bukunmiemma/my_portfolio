import 'package:flutter/material.dart';
import 'package:my_portfolio_website/responsive_layout/mobile_screen_layout.dart';
import 'package:my_portfolio_website/responsive_layout/responsive.dart';
import 'package:my_portfolio_website/responsive_layout/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio Website',
      theme: ThemeData(
        fontFamily: 'ProzaLibre',
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.grey[900],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[900],
        ),
      ),
      home: Responsive(
        mobileScreen: MobileScreenLayout(),
        webScreen: WebScreenLayout(),
      ),
    );
  }
}
