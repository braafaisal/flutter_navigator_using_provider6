import 'package:flutter/material.dart';
import 'package:flutter_navigator_using_provider6/controllers/gameController.dart';
import 'screens/all.dart';
import 'package:provider/provider.dart';

import 'controllers/navigation.dart';

//منطق1    للمشروع  الذى فيه صفحات كثير واكثر تعقيدا
void main() {
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<NavigatoinController>(
          create: (_) => NavigatoinController(),
        ),
        ListenableProvider<GameController>(
          create: (_) => GameController(),
        ),
      ],
      child: NaveApp(),
    ),
  );
}

class NaveApp extends StatelessWidget {
  const NaveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navigator(
        pages: getPages(context),
        onPopPage: (route, result) {
          bool popupStatus = route.didPop(result);
          if (popupStatus == true) {
            Provider.of<NavigatoinController>(context, listen: false)
                .changeScreen('/');
          }
          return popupStatus;
        },
      ),
    );
  }
}

List<Page> getPages(context) {
  NavigatoinController navigation = Provider.of<NavigatoinController>(context);
  List<Page> pagesList = [];
  pagesList.add(MaterialPage(child: ListScreen()));
  switch (navigation.screenName) {
    case '/settings':
      pagesList.add(MaterialPage(child: SettingScreen()));

      break;
    case '/about':
      pagesList.add(MaterialPage(child: AboutScreen()));

      break;
    case '/details':
      pagesList.add(MaterialPage(child: DetailsScreen()));

      break;
  }
  return pagesList;
}




// منطق1
  /**
import 'package:flutter/material.dart';
import 'package:flutter_navigator_using_provider6/controllers/gameController.dart';
import 'screens/all.dart';
import 'package:provider/provider.dart';

import 'controllers/navigation.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<NavigatoinController>(
          create: (_) => NavigatoinController(),
        ),
        ListenableProvider<GameController>(
          create: (_) => GameController(),
        ),
      ],
      child: NaveApp(),
    ),
  );
}

class NaveApp extends StatelessWidget {
  const NaveApp({super.key});

  @override
  Widget build(BuildContext context) {
    NavigatoinController navigation =
        Provider.of<NavigatoinController>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navigator(
        pages: [
          MaterialPage(child: ListScreen()),
          if (navigation.screenName == '/settings')
            MaterialPage(child: SettingScreen()),
          if (navigation.screenName == '/about')
            MaterialPage(child: AboutScreen()),
          if (navigation.screenName == '/details')
            MaterialPage(child: DetailsScreen()),
        ],
        onPopPage: (route, result) {
          bool popupStatus = route.didPop(result);
          if (popupStatus == true) {
            Provider.of<NavigatoinController>(context, listen: false)
                .changeScreen('/');
          }
          return popupStatus;
        },
      ),
    );
  }
}
   */






//منطق3   اقل تنظيما
// import 'package:flutter/material.dart';
// import 'package:flutter_navigator_using_provider6/controllers/gameController.dart';
// import 'package:flutter_navigator_using_provider6/controllers/navigation.dart';
// import 'package:flutter_navigator_using_provider6/screens/about.dart';
// import 'package:flutter_navigator_using_provider6/screens/details.dart';
// import 'package:flutter_navigator_using_provider6/screens/list.dart';
// import 'package:flutter_navigator_using_provider6/screens/settings.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(
//     MultiProvider(
//       providers: [
//         ListenableProvider<NavigatoinController>(
//           create: (_) => NavigatoinController(),
//         ),
//         ListenableProvider<GameController>(
//           create: (_) => GameController(),
//         ),
//       ],
//       child: NaveApp(),
//     ),
//   );
// }

// class NaveApp extends StatelessWidget {
//   const NaveApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final navigation = Provider.of<NavigatoinController>(context);
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Navigator(
//         pages: getPages(navigation),
//         onPopPage: (route, result) {
//           bool popupStatus = route.didPop(result);
//           if (popupStatus == true) {
//             navigation.changeScreen('/');
//           }
//           return popupStatus;
//         },
//       ),
//     );
//   }
// }

// List<Page> getPages(NavigatoinController navigation) {
//   List<Page> pagesList = [];
//   pagesList.add(MaterialPage(child: ListScreen()));
//   switch (navigation.screenName) {
//     case '/settings':
//       pagesList.add(MaterialPage(child: SettingScreen()));
//       break;
//     case '/about':
//       pagesList.add(MaterialPage(child: AboutScreen()));
//       break;
//     case '/details':
//       pagesList.add(MaterialPage(child: DetailsScreen()));
//       break;
//   }
//   return pagesList;
// }


