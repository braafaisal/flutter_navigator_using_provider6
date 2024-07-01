import 'package:flutter/material.dart';

class NavigatoinController extends ChangeNotifier {
  String screenName = '/';
  void changeScreen(String newScreenName) {
    screenName = newScreenName;
    notifyListeners();
  }
}
