import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:net_flek/presentation/home/widgets/main_card.dart';
import 'package:net_flek/presentation/home/widgets/main_title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: title,
        ),
        const Gap(20),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(10, (index) => const MainCard())),
        )
      ],
    );
  }
}
