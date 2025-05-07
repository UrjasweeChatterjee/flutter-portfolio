import 'package:flutter/material.dart';

import 'screens/about_screen.dart';
import 'screens/contacts.dart';
import 'screens/skills_screen.dart'; // Correct import

void main() {
  runApp(const MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  // Fixed typo
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(primarySwatch: Colors.blue), // Fixed typo
      home: const HomePage(),
      debugShowCheckedModeBanner: false, // Fixed typo
    );
  }
}

class HomePage extends StatefulWidget {
  // Fixed typo
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0; // Changed from 8 to 0
  final List<Widget> _pages = const [
    AboutScreen(),
    SkillsScreen(), // Fixed class name
    ContactsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Changed from MaterialApp to Scaffold
      appBar: AppBar(title: const Text('Portfolio')),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'About'),
          BottomNavigationBarItem(icon: Icon(Icons.code), label: 'Skills'),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: 'Contacts',
          ),
        ],
      ),
    );
  }
}
