part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    required List<Downloadsfd>? downloads,

    required Option<Either<MainFailures, List<Downloadsfd>>>
    downloadfailureorsuccessoption,
  }) = _DownloadsState;

  factory DownloadsState.initial() {
    return const DownloadsState(
      isLoading: false,
      downloadfailureorsuccessoption: None(),
      downloads: [],
    );
  }
  
  @override
  // TODO: implement downloadfailureorsuccessoption
  Option<Either<MainFailures, List<Downloadsfd>>> get downloadfailureorsuccessoption => throw UnimplementedError();
  
  @override
  // TODO: implement downloads
  List<Downloadsfd>? get downloads => throw UnimplementedError();
  
  @override
  // TODO: implement isLoading
  bool get isLoading => throw UnimplementedError();

 
}
