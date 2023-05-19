import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget {
  String text;
  AppBarWidget({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(text,
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                )),
          ),
          const Spacer(),
          const Icon(
            Icons.cast,
            size: 30,
          ),
          const Gap(10),
          Container(height: 30, width: 30, color: Colors.blue),
          const Gap(10)
        ],
      ),
    );
  }
}
