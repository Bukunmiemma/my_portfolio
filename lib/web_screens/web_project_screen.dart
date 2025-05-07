import 'package:flutter/material.dart';
import 'package:my_portfolio_website/screens/contact_screen.dart';
import 'package:my_portfolio_website/utilities/info.dart';
import 'package:my_portfolio_website/web_screens/web_about_screen.dart';
import 'package:my_portfolio_website/web_screens/web_home_screen.dart';
import 'package:my_portfolio_website/widget/project_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class WebProjectScreen extends StatefulWidget {
  const WebProjectScreen({super.key});

  @override
  State<WebProjectScreen> createState() => _WebProjectScreenState();
}

class _WebProjectScreenState extends State<WebProjectScreen> {
  final PageController _pageController = PageController(viewportFraction: 0.8);

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void _launchSiteUrl(int index) async {
    final url = Uri.parse(info[index]['siteUrl']!);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not Launch $url';
    }
  }

  void _launchRepoUrl(int index) async {
    final url = Uri.parse(info[index]['repoUrl']!);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not Launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          ' My Projects',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
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
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 650),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 16),
                    child: Container(
                      padding: EdgeInsets.all(12),
                      margin: EdgeInsets.symmetric(horizontal: 9),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: RichText(
                        text: TextSpan(
                          text:
                              "Here are some of the projects i've worked on over the years as a flutter developer",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: info.length,
                      itemBuilder: (context, index) {
                        return AnimatedBuilder(
                          animation: _pageController,
                          builder: (context, child) {
                            double value = 1.0;
                            if (_pageController.position.haveDimensions) {
                              value = (_pageController.page! - index).abs();
                              value = (1 - (value * 0.3)).clamp(0.0, 1.0);
                            }
                            return Center(
                              child: Transform.scale(
                                scale: value,
                                child: child,
                              ),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: ProjectCard(
                              title: info[index]['title']!,
                              description: info[index]['description']!,
                              imagePath: info[index]['imagePath']!,
                              siteUrl: info[index]['siteUrl']!,
                              repoUrl: info[index]['repoUrl']!,
                              onSitePressed: () => _launchSiteUrl(index),
                              onRepoPressed: () => _launchRepoUrl(index),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: info.length,
                    effect: WormEffect(
                      activeDotColor: Colors.blue,
                      dotColor: Colors.grey.shade300,
                      dotWidth: 10,
                      dotHeight: 10,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 40),
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
                              backgroundColor: Colors.blue,
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
                  SizedBox(height: 20),
                  SizedBox(width: 80),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
