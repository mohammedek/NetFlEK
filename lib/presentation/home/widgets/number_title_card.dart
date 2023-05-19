import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:net_flek/presentation/home/widgets/main_title.dart';
import 'package:net_flek/presentation/home/widgets/number_card.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
              children: List.generate(
                  10,
                  (index) => NumberCard(
                        index: index + 1,
                      ))),
        )
      ],
    );
  }
}
