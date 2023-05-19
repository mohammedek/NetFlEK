import 'package:flutter/material.dart';
import 'package:net_flek/presentation/search/widget/search_idle.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(imageUrl))
      )
    );
  }
}
