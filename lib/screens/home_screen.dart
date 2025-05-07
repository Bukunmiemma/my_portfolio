import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_website/screens/about_screen.dart';
import 'package:my_portfolio_website/screens/contact_screen.dart';
import 'package:my_portfolio_website/screens/project_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Home ',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 170,
              color: Colors.grey,
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 28,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/prof_dev.jpg'),
                      radius: 25,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Dev Bukunmi',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Divider()
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: const Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return HomeScreen();
                    },
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: const Text(
                'About Me',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return AboutScreen();
                    },
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.engineering,
                color: Colors.white,
              ),
              title: const Text(
                'My Projects',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return ProjectScreen();
                    },
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.phone, color: Colors.white),
              title: const Text(
                'Contact',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return ContactScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
            const Text(
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
            CircleAvatar(
              backgroundImage: const AssetImage('assets/images/prof_dev.jpg'),
              radius: 80,
            ),
            SizedBox(height: 30),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                children: [
                  TextSpan(
                      text:
                          "I build high quality mobile and web apps,I'm highly skilled at problem solving"),
                  TextSpan(
                      text:
                          ". I'm available for remote works, contracts and freelance work involving mobile and web applications"),
                ],
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return ContactScreen();
                  }),
                );
              },
              style: ElevatedButton.styleFrom(
                elevation: 3,
                minimumSize: Size(double.infinity, 35),
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
            )
          ],
        ),
      ),
    );
  }
}
