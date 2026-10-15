part of 'fast_laugh_bloc.dart';

@freezed
abstract class FastLaughState with _$FastLaughState {
  const factory FastLaughState({
    required List<Downloads> videosList,
    required bool isLoading,
    required bool isError,
  }) = _Initial;
  factory FastLaughState.initail() =>
      FastLaughState(videosList: [], isLoading: true, isError: false);
}
