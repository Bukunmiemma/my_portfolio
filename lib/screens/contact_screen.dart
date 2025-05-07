import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_website/web_screens/web_about_screen.dart';
import 'package:my_portfolio_website/web_screens/web_home_screen.dart';
import 'package:my_portfolio_website/widget/snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          ' Contact Me',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isMobile = constraints.maxWidth < 600;
          if (constraints.maxWidth > 650) {
            return SingleChildScrollView(
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 650),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: RichText(
                            text: TextSpan(
                              text:
                                  'You can contact me through the following handles.',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(16),
                          margin: EdgeInsets.symmetric(horizontal: 14),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Email',
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text:
                                            'Email me by clicking on the button below. '),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              InkWell(
                                onTap: () async {
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
                                    showSnackBar(context,
                                        'Could not launch $emailLaunchUri');
                                  }
                                },
                                child: Align(
                                  alignment: Alignment.center,
                                  child: SvgPicture.asset(
                                    'assets/logo/gmail.svg',
                                    height: 17,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(16),
                          margin: EdgeInsets.symmetric(horizontal: 14),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Text(
                                'Github',
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              RichText(
                                text: TextSpan(
                                  text: 'Check my github',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                              SizedBox(height: 10),
                              InkWell(
                                onTap: () async {
                                  final url = Uri.parse(
                                      'https://github.com/Bukunmiemma');
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url,
                                        mode: LaunchMode.externalApplication);
                                  } else {
                                    showSnackBar(
                                        context, 'Could not launch $url');
                                  }
                                },
                                child: SvgPicture.asset(
                                  'assets/logo/github.svg',
                                  height: 35,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(16),
                          margin: EdgeInsets.symmetric(horizontal: 14),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Text(
                                'LinkedIn',
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              RichText(
                                text: TextSpan(
                                  text: 'Contact me via Linkedin.',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              InkWell(
                                onTap: () async {
                                  final url = Uri.parse(
                                      'https://www.linkedin.com/in/bukunmi-ogunsola-9a795a24a/');
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url,
                                        mode: LaunchMode.externalApplication);
                                  } else {
                                    showSnackBar(
                                        context, 'Could not launch $url');
                                  }
                                },
                                child: SvgPicture.asset(
                                  'assets/logo/linkedin.svg',
                                  height: 40,
                                  width: 40,
                                  colorFilter: ColorFilter.mode(
                                      Colors.blue, BlendMode.srcATop),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(16),
                          margin: EdgeInsets.symmetric(horizontal: 14),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Text(
                                'X',
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              RichText(
                                text: TextSpan(
                                  text: 'Contact me via x (Twitter). ',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                              SizedBox(height: 10),
                              InkWell(
                                onTap: () async {
                                  final url =
                                      Uri.parse('https://x.com/BukunmiOgunsol');
                                  if (await canLaunchUrl(url)) {
                                    launchUrl(url,
                                        mode: LaunchMode.externalApplication);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                child: SvgPicture.asset(
                                  'assets/logo/x.svg',
                                  height: 23,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black, BlendMode.srcATop),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(16),
                          margin: EdgeInsets.symmetric(horizontal: 14),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Text(
                                'Whatsapp',
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              RichText(
                                text: TextSpan(
                                  text:
                                      'Message me via whatsapp by clicking on the button below. ',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                              SizedBox(height: 10),
                              InkWell(
                                onTap: () async {
                                  var phone = '2348069845732';
                                  var url = 'http://wa.me/$phone';
                                  if (await canLaunchUrl(Uri.parse(url))) {
                                    await launchUrl(Uri.parse(url),
                                        mode: LaunchMode.externalApplication);
                                  } else {
                                    showSnackBar(
                                        context, 'Could not launch $url');
                                  }
                                },
                                child: Align(
                                  alignment: Alignment.center,
                                  child: SvgPicture.asset(
                                    'assets/logo/whatsapp.svg',
                                    height: 32,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }

          return SingleChildScrollView(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                      text: TextSpan(
                        text:
                            'You can contact me through the following handles.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.symmetric(horizontal: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 16, color: Colors.black),
                            children: [
                              TextSpan(
                                  text:
                                      'Email me by clicking on the button below. '),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () async {
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
                                  content:
                                      Text('Could not launch $emailLaunchUri'),
                                ),
                              );
                            }
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              'assets/logo/gmail.svg',
                              height: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.symmetric(horizontal: 14),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Text(
                          'Github',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        RichText(
                          text: TextSpan(
                            text: 'Check my github',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () async {
                            final url =
                                Uri.parse('https://github.com/Bukunmiemma');
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url,
                                  mode: LaunchMode.externalApplication);
                            } else {
                              showSnackBar(context, 'Could not launch $url');
                            }
                          },
                          child: SvgPicture.asset(
                            'assets/logo/github.svg',
                            height: 35,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.symmetric(horizontal: 14),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Text(
                          'LinkedIn',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        RichText(
                          text: TextSpan(
                            text: 'Contact me via Linkedin.',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
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
                            height: 40,
                            width: 40,
                            colorFilter: ColorFilter.mode(
                                Colors.blue, BlendMode.srcATop),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.symmetric(horizontal: 14),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Text(
                          'X',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        RichText(
                          text: TextSpan(
                            text: 'Contact me via x (Twitter). ',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () async {
                            final url =
                                Uri.parse('https://x.com/BukunmiOgunsol');
                            if (await canLaunchUrl(url)) {
                              launchUrl(url,
                                  mode: LaunchMode.externalApplication);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: SvgPicture.asset(
                            'assets/logo/x.svg',
                            height: 23,
                            colorFilter: ColorFilter.mode(
                                Colors.black, BlendMode.srcATop),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.symmetric(horizontal: 14),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Text(
                          'Whatsapp',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        RichText(
                          text: TextSpan(
                            text:
                                'Message me via whatsapp by clicking on the button below. ',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 10),
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
                          child: Align(
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              'assets/logo/whatsapp.svg',
                              height: 32,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
