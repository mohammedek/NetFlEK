import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:net_flek/core/colors/colors.dart';
import 'package:net_flek/presentation/downoads/widgets/appbar.dart';

final _widgetList = [const _SmartDownloads(), Section2(), const Section3()];

class ScreenDownload extends StatelessWidget {
  const ScreenDownload({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBarWidget(text: "Downloads"),
      ),
      body: ListView.separated(
          padding: const EdgeInsets.all(5),
          itemBuilder: (ctx, index) => _widgetList[index],
          separatorBuilder: (ctx, index) => const Gap(10),
          itemCount: _widgetList.length),
    );
  }
}

class Section2 extends StatelessWidget {
  final imageList = [
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/vQiryp6LioFxQThywxbC6TuoDjy.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTodOyrmNhYBaysmI-po7ol1HkG46NfWK3X9Q&usqp=CAU",
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/vtfsNxAsDHElFvYHUc9Khwqg17Y.jpg",
  ];

  Section2({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Introducing New Downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: secondryColor, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const Gap(5),
        const Text(
          "We will download a personalized selection of\n movies and shows for you. so there's\n always something to watch on your\ndevice",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        const Gap(5),
        Container(
          width: size.width,
          height: size.height / 1.7,
          color: Colors.transparent,
          child: Stack(alignment: Alignment.center, children: [
            Center(
                child: CircleAvatar(
              radius: size.width * 0.47,
              backgroundColor: Colors.grey.shade800,
            )),
            DownloadsImageWidget(
              angle: 20,
              imageList: imageList[0],
              margin: const EdgeInsets.only(left: 160, bottom: 50),
              size: Size(size.width * 0.4, size.height * 0.35),
            ),
            DownloadsImageWidget(
              angle: -20,
              imageList: imageList[1],
              margin: const EdgeInsets.only(
                right: 160,
                bottom: 60,
              ),
              size: Size(size.width * 0.4, size.height * 0.35),
            ),
            DownloadsImageWidget(
                radius: 10,
                angle: 0,
                imageList: imageList[2],
                margin: const EdgeInsets.only(),
                size: Size(size.width * 0.45, size.height * 0.39)),
          ]),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
              onPressed: () {},
              color: kButtonColorBlue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Text(
                  "Set up",
                  style: TextStyle(
                      color: secondryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )),
        ),
        MaterialButton(
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: secondryColor,
            child: const Text(
              "See what you can download",
              style: TextStyle(
                  color: backgroundColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(Icons.settings),
        Gap(10),
        Text("Smart Downloads"),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget(
      {super.key,
      required this.imageList,
      this.angle = 20,
      required this.margin,
      required this.size,
      this.radius = 10});

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: NetworkImage(imageList), fit: BoxFit.cover),
          color: backgroundColor,
        ),
      ),
    );
  }
}
