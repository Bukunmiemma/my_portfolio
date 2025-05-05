import 'package:flutter/material.dart';
import 'package:my_portfolio_website/screens/home_screen.dart';
import 'package:my_portfolio_website/screens/project_screen.dart';
import 'package:my_portfolio_website/utilities/colors.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: mobilebackgroundColor,
        ),
        drawer: Drawer(
          backgroundColor: mobilebackgroundColor,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: mobilebackgroundColor),
                child: Text(
                  'Menu',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: Colors.white),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.engineering, color: Colors.white),
                title: Text('Projects', style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.person, color: Colors.white),
                title: Text('About', style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.phone, color: Colors.white),
                title: Text('Contact', style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: HomeScreen());
  }
}
