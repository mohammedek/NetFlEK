import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:net_flek/presentation/search/widget/search_idle.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CupertinoSearchTextField(
            style: const TextStyle(color: Colors.white),
            backgroundColor: Colors.grey.shade800,
            prefixIcon: Icon(
              CupertinoIcons.search,
              color: Colors.grey.withOpacity(0.5),
              size: 30,
            ),
            suffixIcon: Icon(
              CupertinoIcons.xmark_circle_fill,
              size: 30,
              color: Colors.grey.shade100,
            ),
          ),
          const Gap(10),
          const Expanded(child: SearchIdleWidget()),
        ],
      ),
    )));
  }
}
