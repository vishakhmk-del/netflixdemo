part of 'hot_and_new_bloc.dart';

@freezed
abstract class HotAndNewState with _$HotAndNewState {
  const factory HotAndNewState({
    required List<HotAndNewResult> comingSoonList,
    required List<HotAndNewResult> everyOneWatchingList,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory HotAndNewState.initial() => HotAndNewState(
    comingSoonList: [],
    everyOneWatchingList: [],
    isLoading: true,
    isError: false,
  );
}
