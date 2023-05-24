import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:net_flek/core/colors/colors.dart';
import 'package:net_flek/core/constants/constants.dart';
import 'package:net_flek/domain/downloads/models/downloads.dart';

class VideoListItemInheritedWidget extends InheritedWidget {
  final Widget widget;
  final Downloads movieData;
  const VideoListItemInheritedWidget({
    super.key,
    required this.widget,
    required this.movieData,
  }) : super(child: widget);

  @override
  bool updateShouldNotify(covariant VideoListItemInheritedWidget oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static VideoListItemInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListItemInheritedWidget>();
  }
}

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final posterPath =
        VideoListItemInheritedWidget.of(context)?.movieData.posterPath;
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // Left Side
              Align(
                alignment: Alignment.bottomCenter,
                child: CircleAvatar(
                  backgroundColor: secondryColor,
                  radius: 30,
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
              const Spacer(),
              // right Side
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: posterPath == null
                        ? null
                        : NetworkImage('$imageAppendUrl$posterPath'),
                    radius: 30,
                  ),
                  const VideoActionWidget(
                      icon: Icons.emoji_emotions, title: "LOL"),
                  const VideoActionWidget(icon: Icons.share, title: "Share"),
                  const VideoActionWidget(
                      icon: Icons.play_arrow, title: "Play"),
                  const Gap(20),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Column(
        children: [
          Icon(icon, size: 30),
          const Gap(10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          )
        ],
      ),
    );
  }
}
