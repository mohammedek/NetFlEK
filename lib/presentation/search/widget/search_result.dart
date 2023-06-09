import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:net_flek/application/search/search_bloc.dart';
import 'package:net_flek/core/constants/constants.dart';
import 'package:net_flek/domain/search/model/search_response/search_response.dart';
import 'package:net_flek/presentation/search/widget/search_text_title.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: " Movies and TV"),
        const Gap(10),
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text(
                    "An error occurred",
                    style: TextStyle(color: Colors.black),
                  ),
                );
              } else if (state.searchResultList.isEmpty) {
                return const Center(
                  child: Text(
                    "No Results Found",
                    style: TextStyle(color: Colors.black),
                  ),
                );
              } else {
                return GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1 / 1.4,
                  children: state.searchResultList
                      .map((movie) =>
                      MainCard(imageUrl: movie.posterImageUrl))
                      .toList(),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final String imageUrl;

  const MainCard({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
