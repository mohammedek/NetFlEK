import 'package:flutter/material.dart';
import 'package:net_flek/core/colors/colors.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidgets extends StatelessWidget {
  const BottomNavigationWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int newIndex, _) {
          return BottomNavigationBar(
              backgroundColor: backgroundColor,
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              currentIndex: newIndex,
              onTap: (index) {
                indexChangeNotifier.value = index;
              },
              selectedItemColor: Colors.white,
              unselectedItemColor: grey,
              selectedIconTheme: const IconThemeData(
                color: Colors.white,
              ),
              unselectedIconTheme: const IconThemeData(color: Colors.grey),
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.free_breakfast_sharp), label: "New & Hot"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.face_2), label: "Fast Laugh"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Search "),
                BottomNavigationBarItem(
                    icon: Icon(Icons.download), label: "Downloads "),
              ]);
        });
  }
}
