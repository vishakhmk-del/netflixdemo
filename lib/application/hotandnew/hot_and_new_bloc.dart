import 'package:bloc/bloc.dart';
import 'package:dmflix/domain/failures/main_failures.dart';
import 'package:dmflix/domain/hotandnew/hot_and_new_service.dart';
import 'package:dmflix/domain/hotandnew/models/hotandnew.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'hot_and_new_event.dart';
part 'hot_and_new_state.dart';
part 'hot_and_new_bloc.freezed.dart';

@injectable
class HotAndNewBloc extends Bloc<HotAndNewEvent, HotAndNewState> {
  final HotAndNewService hotAndNewService;
  HotAndNewBloc(this.hotAndNewService) : super(HotAndNewState.initial()) {
    on<LoadDataInComingSoon>((event, emit) async {
      emit(
        HotAndNewState(
          comingSoonList: [],
          everyOneWatchingList: [],
          isLoading: true,
          isError: false,
        ),
      );

      final comingSoonresult = await hotAndNewService.getHotAndNewMovieData();

      final newState = comingSoonresult.fold(
        (MainFailures failure) {
          return HotAndNewState(
            comingSoonList: [],
            everyOneWatchingList: [],
            isLoading: false,
            isError: true,
          );
        },
        (Hotandnew resp) {
          return HotAndNewState(
            comingSoonList: resp.results??[],
            everyOneWatchingList: state.everyOneWatchingList,
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(newState);
    });

    on<LoadDataInEveryOneWatching>((event, emit) {});
  }
}
