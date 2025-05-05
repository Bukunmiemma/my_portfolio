import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_portfolio_website/utilities/info.dart';
import 'package:my_portfolio_website/widget/project_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
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
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 16),
              child: RichText(
                text: TextSpan(
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                          text:
                              "Here are some of the projects i've worked on over the years as a flutter developer")
                    ]),
              ),
            ),
            SizedBox(height: 40),
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
            SizedBox(height: 60),
            SmoothPageIndicator(
              controller: _pageController,
              count: info.length,
              effect: WormEffect(
                activeDotColor: Colors.blueAccent,
                dotColor: Colors.grey.shade300,
                dotWidth: 15,
                dotHeight: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
