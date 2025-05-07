import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String name;
  final String title;
  final String imageUrl;
  final String about;
  final List<String> skills;

  const ProfilePage({
    super.key,
    required this.name,
    required this.title,
    required this.imageUrl,
    required this.about,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16),
            Text(
              "About",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(about),
            SizedBox(height: 16),
            Text(
              "Skills",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            ...skills.map(
              (skill) =>
                  ListTile(leading: Icon(Icons.check), title: Text(skill)),
            ),
          ],
        ),
      ),
    );
  }
}
