import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:net_flek/presentation/home/main_card.dart';
import 'package:net_flek/presentation/home/main_title_card.dart';
import 'package:net_flek/presentation/home/screen_home.dart';
import 'package:net_flek/presentation/home/widgets/main_title.dart';
import 'package:net_flek/presentation/home/widgets/number_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children:[
            const   MainTitleCard(title: 'Released in the past year',),
              const Gap(15),
             const MainTitleCard(title: 'Trending now'),
              // for number card
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MainTitle(
                    title: "Top 10 TV Shows",
                  ),
                  const Gap(20),
                  LimitedBox(
                    maxHeight: 200,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(10, (index) =>
                        NumberCard())),
                  )
                ],
              ),
              const Gap(15),
             const MainTitleCard(title: 'Up coming'),
              const Gap(15),
            ],
          ),
        ),
      ),
    );
  }
}
