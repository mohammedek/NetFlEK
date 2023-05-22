import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:net_flek/core/colors/colors.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 40,
          height: 250,
        ),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            width: 130,
            height: 250,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(
                        "https://www.themoviedb.org/t/p/w440_and_h660_face/fJJOs1iyrhKfZceANxoPxPwNGF1.jpg")))),
        Positioned(
          left: 1,
          bottom: -30,
          child: BorderedText(
            strokeColor: secondryColor,
            strokeWidth: 5,
            child: Text(index.toString(),
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 130,
                      fontWeight: FontWeight.bold,
                      color: backgroundColor
                      // fontWeight: FontWeight.w400,
                      ),
                )),
          ),
        )
      ],
    );
  }
}
