import 'package:flutter/material.dart';

import '../components/bottom_nav.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('  Setting Screen'),
      ),
      bottomNavigationBar: BottomNav(1),
    );
  }
}
