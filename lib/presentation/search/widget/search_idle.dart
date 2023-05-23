import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:net_flek/application/search/search_bloc.dart';
import 'package:net_flek/core/colors/colors.dart';
import 'package:net_flek/core/constants/constants.dart';
import 'package:net_flek/presentation/search/widget/search_text_title.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(
          title: 'Top Searches',
        ),
        const Gap(15),
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if(state.isLoading){
                return const Center(child: CircularProgressIndicator(),);
              }else if(state.isError){
                return const Center(child: Text(
                  "Error While Loading Data"
                ),);
              }else if(state.idleList.isEmpty){
               return const Center(child: Text(
                    "List Empty",style: TextStyle(
                  color: secondryColor
                ),
                ),);
              }
              return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) {
                    final movie = state.idleList[index];
                    print(movie.toString());
                    return TopSearchItemTile(
                        title: movie.title ?? 'No title Provided',
                        imageUrl: '$imageAppendUrl${movie.posterPath}');
                    },
                  separatorBuilder: (ctx, index) => const Gap(20),
                  itemCount: state.idleList.length);
            },
          ),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  final String title;
  final String imageUrl;
  const TopSearchItemTile({Key? key, required this.title, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              image: DecorationImage(
                  image: NetworkImage(imageUrl), fit: BoxFit.cover)),
        ),
         const Gap(15),
         Expanded(
           child: Text(
            title,
            style:
            const TextStyle(
                overflow: TextOverflow.ellipsis,
                wordSpacing: 1.2,
                fontWeight: FontWeight.bold,
                color: grey, fontSize: 16),
        ),
         ),
        const Spacer(),
        const Icon(
          Icons.play_circle_fill,
          size:40,
        )
      ],
    );
  }
}
