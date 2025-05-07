import 'package:flutter/material.dart';

import '../data/contacts_data.dart';
import 'profile_page.dart'; // Make sure this import path is correct

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

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
            // Fixed: Changed from ListTitle to ListTile
            leading: CircleAvatar(
              backgroundImage: NetworkImage(contact['image']),
            ),
            title: Text(contact['name']),
            subtitle: Text(contact['title']),
            onTap: () {
              // Fixed: Changed from onTag to onTap
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder:
                      (context) => ProfilePage(
                        name: contact['name'],
                        title: contact['title'],
                        imageUrl: contact['image'],
                        about: contact['about'],
                        skills: List<String>.from(contact['skills']),
                      ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
