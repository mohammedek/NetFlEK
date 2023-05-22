import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';
import 'package:net_flek/core/constants/constants.dart';

import 'package:net_flek/presentation/home/widgets/background_card.dart';
import 'package:net_flek/presentation/home/widgets/main_title_card.dart';
import 'package:net_flek/presentation/home/widgets/number_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ValueListenableBuilder(
              valueListenable: scrollNotifier,
              builder: (BuildContext context, index, _) {
                return NotificationListener<UserScrollNotification>(
                    onNotification: (notification) {
                      final ScrollDirection direction = notification.direction;
                      if (kDebugMode) {
                        print(direction);
                      }
                      if (direction == ScrollDirection.reverse) {
                        scrollNotifier.value = false;
                      } else if (direction == ScrollDirection.forward) {
                        scrollNotifier.value = true;
                      }
                      return true;
                    },
                    child: Stack(
                      children: [
                        ListView(
                          children: const [
                            BackgroundCard(),
                            MainTitleCard(
                              title: 'Released in the past year',
                            ),
                            Gap(15),
                            MainTitleCard(title: 'Trending now'),
                            // for number card
                            NumberTitleCard(),
                            Gap(15),
                            MainTitleCard(title: 'Up coming'),
                            Gap(15),
                            Row()
                          ],
                        ),
                        scrollNotifier.value == true
                            ? AnimatedContainer(
                                duration: const Duration(milliseconds: 1000),
                                width: double.infinity,
                                height: 90,
                                color: Colors.black.withOpacity(0.3),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.network(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTodOyrmNhYBaysmI-po7ol1HkG46NfWK3X9Q&usqp=CAU",
                                          height: 70,
                                          width: 70,
                                        ),
                                        const Spacer(),
                                        const Icon(
                                          Icons.cast,
                                          size: 30,
                                        ),
                                        const Gap(10),
                                        Container(
                                            height: 30,
                                            width: 30,
                                            color: Colors.blue),
                                        const Gap(10),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("TV Shows", style: kHomeTitleText),
                                        Text(
                                          "Movies",
                                          style: kHomeTitleText,
                                        ),
                                        Text(
                                          "Categories",
                                          style: kHomeTitleText,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            : const SizedBox(
                                height: 20,
                              )
                      ],
                    ));
              })),
    );
  }
}
