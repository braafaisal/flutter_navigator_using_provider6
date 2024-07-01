import 'package:flutter/material.dart';

import '../models/game.dart';

class GameController extends ChangeNotifier {
  int gameIndex = 0;
  List<GameModel> list = [
    GameModel(
      'Defender',
      'Defender aspace Shoter',
    ),
    GameModel(
      'dob',
      'Defender aspace Shoter',
    )
  ];
  void changeGameIndex(int newIndex) {
    gameIndex = newIndex;
    notifyListeners();
  }
}
