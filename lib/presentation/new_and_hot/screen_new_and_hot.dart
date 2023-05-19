import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:net_flek/core/colors/colors.dart';
import 'package:net_flek/core/constants/constants.dart';
import 'package:net_flek/presentation/home/widgets/custom_button_widget.dart';
import 'package:net_flek/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:net_flek/presentation/new_and_hot/widgets/coming_soon.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(110),
              child: AppBar(
                title: Text("New & Hot",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                actions: [
                  const Icon(
                    Icons.cast,
                    size: 30,
                  ),
                  const Gap(10),
                  Container(height: 10, width: 30, color: Colors.blue),
                  const Gap(10)
                ],
                bottom: TabBar(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    isScrollable: true,
                    labelColor: backgroundColor,
                    labelStyle: kHomeTitleText,
                    unselectedLabelColor: secondryColor,
                    indicator: BoxDecoration(
                        color: secondryColor, borderRadius: kBorderRadius30),
                    tabs: const [
                      Tab(text: "Coming Soon 🍿"),
                      Tab(
                        text: "👀 Every one's watching",
                      ),
                    ]),
              )),
          body: TabBarView(
              children: [_buildComingSoon(),
                _buildEveryonesWatching()]),
        ),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      itemBuilder: (BuildContext context,index) => const ComingSoonWidget(),
      itemCount: 10,
    );
  }

  Widget _buildEveryonesWatching() {
    return SizedBox();
  }
}


