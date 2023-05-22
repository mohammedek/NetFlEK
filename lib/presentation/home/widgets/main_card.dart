import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 150,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
              image: NetworkImage(
                  "https://www.themoviedb.org/t/p/w440_and_h660_face/3zunvPLgM9qGFr8ob2BpaKSuAJI.jpg"),
              fit: BoxFit.contain)),
    );
  }
}
