import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixproject/domain/downloads/i_donload_repo.dart';
import 'package:netflixproject/domain/downloads/models/download.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

final dummyvideoUrl = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
];

ValueNotifier<Set<int>> likedVideoidListNotifier = ValueNotifier({});

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(IdownloadsRepo _downloadServices)
    : super(FastLaughState.initial()) {
    on<Initialize>((event, emit) async {
      //sendin Loading
      emit(FastLaughState(videoList: [], isLoading: true, isError: false));
      // TODO: implement event handler

      //get trending movies
      final _result = await _downloadServices.getDownloadimages();
      final _state = _result.fold(
        (l) {
          return FastLaughState(
            // likedVideoidList: state.likedVideoidList,
            videoList: [],
            isLoading: false,
            isError: true,
          );
        },
        (resp) {
          return FastLaughState(
            // likedVideoidList: state.likedVideoidList,
            videoList: resp,
            isLoading: false,
            isError: false,
          );
        },
      );
      //send to UI
      emit(_state);
    });
    on<LikedVideo>((event, emit) async {
      // state.likedVideoidList.add(event.id);
      likedVideoidListNotifier.value.add(event.id);
      likedVideoidListNotifier.notifyListeners();
      // emit(state.copyWith(likedVideoidList: state.likedVideoidList));
    });

    on<UnlikedVideo>((event, emit) async {
      likedVideoidListNotifier.value.remove(event.id);
      likedVideoidListNotifier.notifyListeners();
      //state.likedVideoidList.remove(event.id);
      //emit(state.copyWith(likedVideoidList: state.likedVideoidList));
    });
  }
}
