import 'package:flutter/material.dart';
import 'package:net_flek/core/colors/colors.dart';
import 'package:net_flek/presentation/downoads/screen_downloads.dart';
import 'package:net_flek/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:net_flek/presentation/home/screen_home.dart';
import 'package:net_flek/presentation/main_page/widgets/bottom_nav.dart';
import 'package:net_flek/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:net_flek/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  const ScreenMainPage({Key? key}) : super(key: key);

  final _pages = const [
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownload()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          }),
      bottomNavigationBar: const BottomNavigationWidgets(),
    );
  }
}
