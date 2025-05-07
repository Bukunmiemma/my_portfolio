import 'package:flutter/material.dart';
import 'package:my_portfolio_website/screens/contact_screen.dart';
import 'package:my_portfolio_website/web_screens/web_about_screen.dart';
import 'package:my_portfolio_website/web_screens/web_project_screen.dart';

class WebHomeScreen extends StatelessWidget {
  const WebHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => WebHomeScreen(),
                ),
              );
            },
            child: Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => WebAboutScreen(),
                ),
              );
            },
            child: Text(
              'About Me',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => WebProjectScreen(),
                ),
              );
            },
            child: Text(
              'My Projects',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return ContactScreen();
                  },
                ),
              );
            },
            child: Text(
              'Contact',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 70),
                const Text(
                  'Hello   ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.waving_hand,
                  color: Colors.yellow,
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "I'm Bukunmi Ogunsola,",
              style: TextStyle(
                  fontSize: 27,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "A Mobile App Developer",
              style: TextStyle(
                fontSize: 23,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: CircleAvatar(
                backgroundImage: const AssetImage('assets/images/prof_dev.jpg'),
                radius: 80,
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: SizedBox(
                width: 350,
                child: Column(
                  children: [
                    Text(
                      "I build high quality mobile and web apps,I'm highly skilled at problem solving",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "  I'm available for remote works, contracts and freelance work involving mobile and web applications",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: SizedBox(
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return ContactScreen();
                      }),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 3,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Hire Me',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
