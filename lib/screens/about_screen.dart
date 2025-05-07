import 'package:flutter/material.dart';

import 'profile_page.dart'; // Make sure this import path is correct

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfilePage(
      name: 'Urjaswee Chatterjee',
      title: 'Developer',
      imageUrl:
          'https://media.licdn.com/dms/image/v2/D5603AQF9yy3jBw4rIw/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1711218778481?e=2147483647&v=beta&t=9dER_g0Xp_Axs096nhavNCygQDhNxzZ_WV0mrFNGPXk', // Fix typo: was 'inagdurl'
      about:
          'I am Urjaswee Chatterjee, a passionate  developer, '
          'building cross-platform mobile applications. I specialize in creating '
          'beautiful, performant apps with great user experiences',
      skills: const ['Flutter', 'Javascript', 'React'],
    );
  }
}
