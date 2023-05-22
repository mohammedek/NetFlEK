import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:net_flek/application/search/search_bloc.dart';
import 'package:net_flek/core/constants/constants.dart';
import 'package:net_flek/domain/search/model/search_response/search_response.dart';
import 'package:net_flek/presentation/search/widget/search_text_title.dart';


class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const  SearchTextTitle(title:" Movies and TV"),
        const Gap(10),
        Expanded(
          child: BlocBuilder<SearchBloc,SearchState>(
            builder: (context, state) {
              return GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1 / 1.4,
                  children: List.generate(20, (index) {
                    final movie = state.searchResultList[index];
                    return  MainCard(imageUrl1: movie.posterImageUrl ?? '');
                  }));
            },
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final String imageUrl1;

  const MainCard({super.key,
    required this.imageUrl1
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          image:  DecorationImage(
              image: NetworkImage(imageUrl1),
              fit: BoxFit.cover)),
    );
  }
}
