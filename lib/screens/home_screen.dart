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
          'Welcome ',
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
              title: Text(
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
              title: Text(
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
              leading: Icon(Icons.person, color: Colors.white),
              title: Text(
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
              title: Text(
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
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/prof_dev.jpg'),
              radius: 80,
            ),
            SizedBox(height: 40),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
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
            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade300,
                ),
                children: [
                  TextSpan(
                      text:
                          "I build high quality mobile and web apps, highly skilled at problem solving"),
                  TextSpan(
                      text:
                          ".I'm available for remote, contracts and freelance work involving mobile and web applications"),
                ],
              ),
            ),
            SizedBox(height: 40),
            Row(
              children: [
                InkWell(
                  onTap: () async {
                    final url = Uri.parse(
                        'https://www.linkedin.com/in/bukunmi-ogunsola-9a795a24a/');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url,
                          mode: LaunchMode.externalApplication);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: SvgPicture.asset(
                    'assets/logo/linkedin.svg',
                    height: 35,
                    colorFilter:
                        ColorFilter.mode(Colors.white, BlendMode.srcATop),
                  ),
                ),
                SizedBox(width: 15),
                InkWell(
                  onTap: () async {
                    final url = Uri.parse('https://x.com/BukunmiOgunsol');
                    if (await canLaunchUrl(url)) {
                      launchUrl(url, mode: LaunchMode.externalApplication);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: SvgPicture.asset(
                    'assets/logo/x.svg',
                    height: 23,
                    colorFilter:
                        ColorFilter.mode(Colors.white, BlendMode.srcATop),
                  ),
                ),
                SizedBox(width: 18),
                ElevatedButton(
                  onPressed: () async {
                    final Uri emailLaunchUri = Uri(
                      scheme: 'mailto',
                      path: 'bogunsola38@gmail.com',
                      query: Uri.encodeFull(
                        'subject=Contact from Portfolio Website&body=Hi there',
                      ),
                    );
                    if (await canLaunchUrl(emailLaunchUri)) {
                      await launchUrl(
                        emailLaunchUri,
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Could not launch $emailLaunchUri'),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 3,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/logo/gmail.svg',
                        height: 17,
                      ),
                      Text(
                        '    Gmail',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
