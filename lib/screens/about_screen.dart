import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_website/screens/contact_screen.dart';
import 'package:my_portfolio_website/widget/snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          ' About Me',
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(19),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(21),
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'INTRODUCTION',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                              text:
                                  "I'm Ogunsola Bukunmi, a self taught mobile app developer, i build mobile and web apps with flutter and dart."),
                          TextSpan(
                              text:
                                  ' I have 2 years of experience in mobile app development with flutter, and i am available for mobile app contracts, remote works and collaborations.'),
                          TextSpan(
                              text:
                                  "I write clean, maintenable and organized codes to create awesome and beautiful apps with great user experience")
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(21),
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'DEVELOPMENT',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                              text:
                                  "Building and creating accurate user experience is something i always possess."),
                          TextSpan(
                              text:
                                  "I currently write with flutter, dart and firebase. I also make use of flutter state management like provider, riverpod and BLoC"),
                          TextSpan(
                              text:
                                  ".I build apps with responsive UIs on all screen sizes.I always study and level up my skills in order to stay up to date as a software developer."),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.all(21),
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      "SKILLS",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                              text:
                                  "Over the years, i've worked with the following tools as a flutter developer"),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SvgPicture.asset(
                          'assets/logo/flutter.svg',
                          height: 35,
                        ),
                        SvgPicture.asset(
                          'assets/logo/dart.svg',
                          height: 35,
                        ),
                        SvgPicture.asset(
                          'assets/logo/firebase.svg',
                          height: 35,
                        ),
                        SvgPicture.asset(
                          'assets/logo/github.svg',
                          height: 35,
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Text(
                      "Do you have a project in mind? let's help you build",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ContactScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 3,
                          minimumSize: Size(double.infinity, 35),
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Hire me',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  InkWell(
                    onTap: () async {
                      var phone = '2348069845732';
                      var url = 'http://wa.me/$phone';
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(Uri.parse(url),
                            mode: LaunchMode.externalApplication);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: SvgPicture.asset(
                      'assets/logo/whatsapp.svg',
                      height: 35,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      final url = Uri.parse('https://github.com/Bukunmiemma');
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url,
                            mode: LaunchMode.externalApplication);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: SvgPicture.asset(
                      'assets/logo/github.svg',
                      height: 35,
                      colorFilter:
                          ColorFilter.mode(Colors.white, BlendMode.srcATop),
                    ),
                  ),
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
                        showSnackBar(
                            context, 'Could not launch $emailLaunchUri');
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
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      text: "© 2025 ",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: " Bukunmi Ogunsola. ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: "All rights reserved"),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
