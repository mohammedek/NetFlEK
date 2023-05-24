import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:net_flek/application/search/search_bloc.dart';
import 'package:net_flek/domain/core/debounce/debounce.dart';
import 'package:net_flek/presentation/search/widget/search_idle.dart';
import 'package:net_flek/presentation/search/widget/search_result.dart';

class ScreenSearch extends StatelessWidget {
  ScreenSearch({super.key});

  final _debouncer = Debouncer(milliseconds: 1*1000);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const Initialize());
    });
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
                    onChanged: (value) {
                        if(value.isEmpty){
                          return;
                        }
                        _debouncer.run(() {
                        BlocProvider.of<SearchBloc>(context).add(
                            SearchMovie(movieQuery: value));
                      });
                    },
                  ),
                  const Gap(10),
                  Expanded(
                    child: BlocBuilder<SearchBloc, SearchState>(
                      builder: (context, state) {

                        if (state.searchResultList.isEmpty) {
                          return  const SearchIdleWidget();
                        } else{
                           return const  SearchResultWidget();
                        }
                      },
                    ),
                  ),
                  // const Expanded(child: SearchResultWidget()),
                ],
              ),
            )));
  }
}
