import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixproject/domain/core/Failures/main_failures.dart';
import 'package:netflixproject/domain/downloads/i_donload_repo.dart';
import 'package:netflixproject/domain/downloads/models/download.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IdownloadsRepo _downloadsRepo;
  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.initial()) {
    on<GetDownloadimages>((event, emit) async {
      //loading
      // TODO: implement event handler
      emit(
        state.copyWith(isLoading: true, downloadfailureorsuccessoption: none()),
      );
      //fetch
      final Either<MainFailures, List<Downloadsfd>> downloadOptions =
          await _downloadsRepo.getDownloadimages();
      print(downloadOptions.toString());

      emit(
        downloadOptions.fold(
          (failure) => state.copyWith(
            isLoading: false,
            downloadfailureorsuccessoption: Some(left(failure)),
          ),
          (success) => state.copyWith(
            isLoading: false,
            downloads: success,
            downloadfailureorsuccessoption: Some(right(success)),
          ),
        ),
      );
    });
  }
}
