import 'package:flutter/material.dart';
import 'package:my_portfolio_website/responsive_layout/mobile_screen_layout.dart';
import 'package:my_portfolio_website/responsive_layout/web_screen_layout.dart';

class Responsive extends StatelessWidget {
  final Widget mobileScreen;
  final Widget webScreen;
  const Responsive({
    super.key,
    required this.mobileScreen,
    required this.webScreen,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth > 650) {
        return WebScreenLayout();
      }
      return MobileScreenLayout();
    });
  }
}
