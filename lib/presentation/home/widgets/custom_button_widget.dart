import 'package:flutter/material.dart';
import 'package:net_flek/core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key, required this.icon, required this.title, this.iconSize = 30,
     this.textSize = 16,
  });
  final IconData icon;
  final double iconSize;
  final String title;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Icon(icon,
          size: iconSize,
        ),
        Text(
          title,
          style:  TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: textSize,
          ),
        )
      ],
    );
  }
}
