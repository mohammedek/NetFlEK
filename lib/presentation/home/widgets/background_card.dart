import 'package:flutter/material.dart';
import 'package:net_flek/core/colors/colors.dart';
import 'package:net_flek/core/constants/constants.dart';
import 'package:net_flek/presentation/home/widgets/custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        height: 600,
        decoration: const BoxDecoration(
            image: DecorationImage(image: NetworkImage(kMainImage))),
      ),
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CustomButtonWidget(icon: Icons.add, title: "My List"),
              _PlayButton(),
              const CustomButtonWidget(icon: Icons.info, title: "info"),
            ],
          ),
        ),
      ),
    ]);
  }
}

TextButton _PlayButton() {
  return TextButton.icon(
    onPressed: () {},
    style:
        ButtonStyle(backgroundColor: MaterialStateProperty.all(secondryColor)),
    icon: const Icon(
      Icons.play_arrow,
      size: 40,
      color: backgroundColor,
    ),
    label: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        "Play",
        style: TextStyle(
            color: backgroundColor, fontSize: 20, fontWeight: FontWeight.w700),
      ),
    ),
  );
}
