import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dmflix/domain/downloads/i_downloads_repo.dart';
import 'package:dmflix/domain/downloads/models/downloads.dart';
import 'package:dmflix/domain/failures/main_failures.dart';
import 'package:dmflix/domain/search/search_service.dart';
import 'package:dmflix/domain/search/models/searches/searches.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo _downloadService;
  final SearchService _searchService;

  SearchBloc(this._searchService, this._downloadService)
    : super(SearchState.initial()) {
    /*Idle State */

    on<Initialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(
          SearchState(
            searchResultList: [],
            idleList: state.idleList,
            isLoading: false,
            isError: false,
          ),
        );
        return;
      }

      emit(
        SearchState(
          searchResultList: [],
          idleList: [],
          isLoading: true,
          isError: false,
        ),
      );

      // get trending movie
      final idleResult = await _downloadService.getDownloadsImages();
      final idleState = idleResult.fold(
        (MainFailures f) => SearchState(
          searchResultList: [],
          idleList: [],
          isLoading: false,
          isError: true,
        ),
        (List<Downloads> list) => SearchState(
          searchResultList: [],
          idleList: list,
          isLoading: false,
          isError: false,
        ),
      );

      emit(idleState);
      //show to ui
    });

    /*search State */

    on<SearchMovies>((event, emit) async {
      // call search movie
      log("seraching for ${event.movieQuery}");
      emit(
        SearchState(
          searchResultList: [],
          idleList: [],
          isLoading: true,
          isError: false,
        ),
      );
      final movieResult = await _searchService.searchMovies(
        movieQuery: event.movieQuery,
      );
      final movieState = movieResult.fold(
        (MainFailures f) => SearchState(
          searchResultList: [],
          idleList: [],
          isLoading: false,
          isError: true,
        ),
        (Searches list) => SearchState(
          searchResultList: list.results,
          idleList: [],
          isLoading: false,
          isError: false,
        ),
      );

      emit(movieState);
      // show to ui
    });
  }
}
