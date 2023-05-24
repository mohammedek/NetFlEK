import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:net_flek/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:net_flek/domain/core/failures/main_failure.dart';
import 'package:net_flek/domain/downloads/i_downloads_repo.dart';
import 'package:net_flek/domain/downloads/models/downloads.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

final _videoUrls = [
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4",
];

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(
    IDownloadsRepo _downloadService,
  ) : super(FastLaughState.initial()) {
    on<Initilize>((event, emit) async {
      emit(
          const FastLaughState(
              videosList: [],
              isLoading: true,
              isError: false));
      // get trending movies
      final _result = await _downloadService.getDownloadsImages();
      final _state = _result.fold((f) {
        return const FastLaughState(
            videosList: [], isLoading: false, isError: true);
      }, (resp) {
        return FastLaughState(
            videosList: resp,
            isLoading: false,
            isError: false);
      });
      //  send to ui
      emit(_state);
    });
  }
}
