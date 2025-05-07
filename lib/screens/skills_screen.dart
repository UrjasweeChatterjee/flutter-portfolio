import 'package:flutter/material.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  // Add your skills list here
  final List<String> skills = const [
    'Flutter',
    'Dart',
    'Firebase',
    'UI/UX Design',
    'API Integration',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: skills.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.code, color: Colors.blue),
              title: Text(skills[index], style: const TextStyle(fontSize: 18)),
            ),
          );
        },
      ),
    );
  }
}
