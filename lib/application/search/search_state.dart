part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    required List<SearchResultData> searchResultList,
    required List<Downloads> idleList,
    required bool isLoading,
    required bool isError,
  }) = _SearchState;
  factory SearchState.initial() => SearchState(
    idleList: [],
    searchResultList: [],
    isLoading: false,
    isError: false,
  );
}
