import 'package:flutter/material.dart';

class ProjectCard extends StatefulWidget {
  final String title;
  final String description;
  final String imagePath;
  final String siteUrl;
  final String repoUrl;
  final VoidCallback? onSitePressed;
  final VoidCallback? onRepoPressed;

  const ProjectCard(
      {super.key,
      required this.title,
      required this.description,
      required this.imagePath,
      required this.siteUrl,
      required this.repoUrl,
      required this.onSitePressed,
      required this.onRepoPressed});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              widget.title,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ),
          SizedBox(height: 10),
          Text(
            widget.description,
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          SizedBox(height: 70),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: widget.onSitePressed,
                  style: ElevatedButton.styleFrom(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.blue),
                  child: Text(
                    'See App',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: ElevatedButton(
                  onPressed: widget.onRepoPressed,
                  style: ElevatedButton.styleFrom(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.blue),
                  child: Text(
                    'See Repo',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
