import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:net_flek/core/colors/colors.dart';
import 'package:net_flek/core/constants/constants.dart';
import 'package:net_flek/presentation/home/widgets/custom_button_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        const SizedBox(
          width: 50,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "FEB",
                style: TextStyle(letterSpacing: 2, color: grey, fontSize: 16),
              ),
              Text(
                "11",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                  children: [
                SizedBox(
                  width: double.infinity,
                  height: 400,
                  child: Image.network(kHorizintalImage),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: CircleAvatar(
                    backgroundColor: secondryColor,
                    radius: 22,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.volume_down,
                        // size: 30,
                        color: backgroundColor,
                      ),
                    ),
                  ),
                ),
              ]),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Fast X",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      CustomButtonWidget(
                        icon: Icons.add_alert,
                        title: "Remind me",
                        iconSize: 25,
                        textSize: 11,
                      ),
                      Gap(10),
                      CustomButtonWidget(
                        icon: Icons.info,
                        title: "info",
                        iconSize: 25,
                        textSize: 11,
                      ),
                      Gap(10)
                    ],
                  )
                ],
              ),
              const Gap(5),
              const Text("Coming on Friday"),
              const Gap(9),
              const Text(
                "Fast and Furious X",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Gap(10),
              const Text(
                  "Fast X is a noisy actioner which pushes the limits of inventive action"
                  " set pieces "
                  "but this time stays grounded compared to the space shit they"
                  " While it entertains us throughout because of its action,"),
            ],
          ),
        ),
      ],
    );
  }
}
