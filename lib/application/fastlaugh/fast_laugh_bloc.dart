import 'package:bloc/bloc.dart';
import 'package:dmflix/domain/downloads/i_downloads_repo.dart';
import 'package:dmflix/domain/downloads/models/downloads.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

final videoUrls = [
  'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
  'https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4',
  'https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4',
  'https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4',
  'https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4',
  'https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4',
  'https://storage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4',
  'https://storage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4',
];
ValueNotifier<Set<int>> likedVideoIdsNotifier = ValueNotifier({});

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(IDownloadsRepo downloadService)
    : super(FastLaughState.initail()) {
    on<Initialize>((event, emit) async {
      emit(FastLaughState(videosList: [], isLoading: false, isError: true));

      final videoResult = await downloadService.getDownloadsImages();
      final videoState = videoResult.fold(
        (f) => FastLaughState(videosList: [], isLoading: false, isError: true),
        (resp) =>
            FastLaughState(videosList: resp, isLoading: false, isError: false),
      );
      emit(videoState);
    });
    on<LikedVideo>((event, emit) async {
      likedVideoIdsNotifier.value.add(event.id);
      likedVideoIdsNotifier.notifyListeners();
    });
    on<UnLikedVideo>((event, emit) async {
      likedVideoIdsNotifier.value.remove(event.id);
      likedVideoIdsNotifier.notifyListeners();
    });
  }
}
