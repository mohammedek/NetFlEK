import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:net_flek/presentation/search/widget/search_text_title.dart';

const imageUrl =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTodOyrmNhYBaysmI-po7ol1HkG46NfWK3X9Q&usqp=CAU";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: "Movies and TV"),
        const Gap(10),
        Expanded(
          child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 1/ 1.4,
              children: List.generate(20, (index) {
                return MainCard();
              })),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(7),
          image: const DecorationImage(
              image: NetworkImage(imageUrl), fit: BoxFit.cover)),
    );
  }
}
