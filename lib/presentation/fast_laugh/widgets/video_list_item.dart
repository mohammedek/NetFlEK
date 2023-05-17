import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:net_flek/core/colors/colors.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
       Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // Left Side
                Align(
          alignment:Alignment.bottomCenter,
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
                children: const [
                  VideoActionWidget(icon: Icons.emoji_emotions, title: "LOL"),
                  VideoActionWidget(icon: Icons.share, title: "Share"),
                  VideoActionWidget(icon: Icons.play_arrow, title: "Play"),
                  Gap(20),
                ],
              )
            ],
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
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [Icon(icon,size: 30),
        const Gap(10),
         Text(title,style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w800,
         ),)],
      ),
    );
  }
}
