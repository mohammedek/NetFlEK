import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:net_flek/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:net_flek/presentation/fast_laugh/widgets/video_list_item.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastLaughBloc>(context).add(const Initilize());
    });
    return Scaffold(
        body: SafeArea(child: BlocBuilder<FastLaughBloc, FastLaughState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        } else if (state.isError) {
          const Center(child: Text("Error while getting data"));
        } else if (state.videosList.isEmpty) {
          const Center(child: Text("Video list empty"));
        }
        return PageView(
            scrollDirection: Axis.vertical,
            children: List.generate(state.videosList.length, (index) {
              return VideoListItemInheritedWidget(
                  widget: VideoListItem(
                    key: Key(index.toString()),
                      index: index),
                  movieData: state.videosList[index]);
            }));
      },
    )));
  }
}
