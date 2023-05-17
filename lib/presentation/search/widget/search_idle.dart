import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:net_flek/core/colors/colors.dart';


const imageUrl = "https://www.themoviedb.org/t/p/w250_and_h141_face/hiHGRbyTcbZoLsYYkO4QiCLYe34.jpg";

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
       const Text('Top Searches',style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold
        ),),
      const   Gap(10),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
              itemBuilder: (ctx,index) => const TopSearchItemTile(),
              separatorBuilder: (ctx,index) => const Gap(20),
              itemCount: 10),
        )
      ],
    );
  }
}


class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 70,
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(image:
            NetworkImage(imageUrl),fit: BoxFit.cover)
          ),
        ),
        const Text("Movie Name",style: TextStyle(
          fontWeight: FontWeight.bold,
          color: grey,
          fontSize: 17
        ),),
        const Spacer(),
      const Icon(Icons.play_circle_fill,size: 45,)
      ],
    );
  }
}
