import 'package:flutter/material.dart';

void main() {
  runApp(const MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const AboutSection(),
    const SkillsSection(),
    const ContactSection(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Portfolio'), centerTitle: true),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
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

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
              'https://media.licdn.com/dms/image/v2/D5603AQF9yy3jBw4rIw/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1711218778481?e=2147483647&v=beta&t=9dER_g0Xp_Axs096nhavNCygQDhNxzZ_WV0mrFNGPXk',
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Urjaswee Chatterjee',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'Flutter Developer',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          SizedBox(height: 30),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'About Me',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'I am Urjaswee Chatterjee, a passionate Flutter developer, '
            'building cross-platform mobile applications. I specialize in creating '
            'beautiful, performant apps with great user experiences.',
            style: TextStyle(fontSize: 16, height: 1.5),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  final List<String> skills = const [
    'Flutter',
    'Dart',
    'Firebase',
    'REST APIs',
    'UI/UX Design',
    'Git & GitHub',
    'State Management (Provider/Bloc)',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: skills.length,
      itemBuilder:
          (context, index) => ListTile(
            leading: const Icon(Icons.check_circle_outline),
            title: Text(skills[index]),
          ),
    );
  }
}

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  final List<Map<String, dynamic>> contacts = const [
    {
      'name': 'Alice Johnson',
      'contact': '+1 234 567 8901',
      'image': 'https://randomuser.me/api/portraits/women/1.jpg',
      'about': 'Flutter Developer with a love for animations.',
      'skills': ['Flutter', 'Firebase', 'UI/UX'],
    },
    {
      'name': 'Bob Smith',
      'contact': '+1 555 234 9876',
      'image': 'https://randomuser.me/api/portraits/men/2.jpg',
      'about': 'Backend enthusiast with Dart experience.',
      'skills': ['Dart', 'Node.js', 'MongoDB'],
    },
    {
      'name': 'Cathy Lee',
      'contact': '+91 98765 43210',
      'image': 'https://randomuser.me/api/portraits/women/3.jpg',
      'about': 'Building cross-platform magic.',
      'skills': ['Flutter', 'Provider', 'SQL'],
    },
    {
      'name': 'David Kim',
      'contact': '+44 1234 567890',
      'image': 'https://randomuser.me/api/portraits/men/4.jpg',
      'about': 'Mobile-first developer from London.',
      'skills': ['Flutter', 'Firebase', 'REST APIs'],
    },
    {
      'name': 'Emma Watson',
      'contact': '+61 400 123 456',
      'image': 'https://randomuser.me/api/portraits/women/5.jpg',
      'about': 'UX-minded Flutter ninja.',
      'skills': ['Flutter', 'Figma', 'UI/UX'],
    },
    {
      'name': 'Frank Castle',
      'contact': '+49 151 2345678',
      'image': 'https://randomuser.me/api/portraits/men/6.jpg',
      'about': 'Coding vigilante. Loves Dart.',
      'skills': ['Dart', 'GraphQL', 'Flutter'],
    },
    {
      'name': 'Grace Hall',
      'contact': '+33 612 345 678',
      'image': 'https://randomuser.me/api/portraits/women/7.jpg',
      'about': 'Making apps with heart and soul.',
      'skills': ['Flutter', 'Firebase', 'UX'],
    },
    {
      'name': 'Henry Ford',
      'contact': '+86 135 6789 0123',
      'image': 'https://randomuser.me/api/portraits/men/8.jpg',
      'about': 'Performance freak and debugger.',
      'skills': ['Flutter', 'Bloc', 'Performance'],
    },
    {
      'name': 'Isla Dey',
      'contact': '+91 91234 56789',
      'image': 'https://randomuser.me/api/portraits/women/9.jpg',
      'about': 'Cross-platform visionary.',
      'skills': ['Flutter', 'Dart', 'Animations'],
    },
    {
      'name': 'Jake Paul',
      'contact': '+1 987 654 3210',
      'image': 'https://randomuser.me/api/portraits/men/10.jpg',
      'about': 'Tech YouTuber and app creator.',
      'skills': ['Flutter', 'YouTube API', 'Firebase'],
    },
  ];

  void _showContactDetails(BuildContext context, Map<String, dynamic> contact) {
    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            title: Text(contact['name']),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(contact['image']),
                ),
                const SizedBox(height: 10),
                Text(contact['about']),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 8,
                  children: List.generate(
                    contact['skills'].length,
                    (index) => Chip(label: Text(contact['skills'][index])),
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Close'),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        final contact = contacts[index];
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(contact['image']),
            ),
            title: Text(contact['name']),
            subtitle: Text(contact['contact']),
            onTap: () => _showContactDetails(context, contact),
          ),
        );
      },
    );
  }
}
