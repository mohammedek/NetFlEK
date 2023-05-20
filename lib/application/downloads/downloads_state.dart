part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    required List<Downloads>? downloads,
    required Option<Either<MainFailure, List<Downloads>>>
        downloadsFailureSuccessOption,
  }) = _DownloadsState;

  factory DownloadsState.inital() {
    return const DownloadsState(
        isLoading: false, downloadsFailureSuccessOption: None(),
      downloads: [],
    );
  }
}
