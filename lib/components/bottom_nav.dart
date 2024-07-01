import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/navigation.dart';

class BottomNav extends StatelessWidget {
  final int activeButtonIndex;

  const BottomNav(this.activeButtonIndex, {super.key});

  @override
  Widget build(BuildContext context) {
    NavigatoinController navigation =
        Provider.of<NavigatoinController>(context, listen: false);
    return BottomNavigationBar(
      currentIndex: activeButtonIndex,
      onTap: (bottomindex) {
        switch (bottomindex) {
          case 0:
            navigation.changeScreen('/');
            break;
          case 1:
            navigation.changeScreen('/settings');
            break;
          case 2:
            navigation.changeScreen('/about');
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home, //0
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Settings Screen'), //1
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          label: 'About',
        ), //2,
      ],
    );
  }
}
