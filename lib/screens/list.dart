import 'package:flutter/material.dart';
import 'package:flutter_navigator_using_provider6/controllers/gameController.dart';
import 'package:provider/provider.dart';

import '../components/bottom_nav.dart';
import '../controllers/navigation.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GameController game = Provider.of<GameController>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('List GameScreen'),
      ),
      body: ListView.builder(
        itemCount: game.list.length,
        itemBuilder: ((context, index) {
          return ListTile(
            title: Text(game.list[index].name),
            onTap: () {
              Provider.of<GameController>(context, listen: false)
                  .changeGameIndex(index);
                    Provider.of<NavigatoinController>(context, listen: false)
                  .changeScreen('details');
            },
          );
        }),
      ),
      bottomNavigationBar: BottomNav(0),
    );
  }
}
