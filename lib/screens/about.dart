import 'package:flutter/material.dart';

import '../components/bottom_nav.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About  Screen'),
      ),
      bottomNavigationBar: BottomNav(2),
    );
  }
}
