import 'package:flutter/material.dart';
import 'package:my_portfolio_website/web_screens/web_home_screen.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebHomeScreen(),
    );
  }
}
