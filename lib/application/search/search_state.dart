part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<SearchResultData> searchresultList,
    required List<Downloadsfd> idleList,
    required bool isLoading,
    required bool isError,
  }) = _SearchState;

  factory SearchState.initial() => SearchState(
    searchresultList: [],
    idleList: [],
    isLoading: false,
    isError: false,
  );

  @override
  // TODO: implement idleList
  List<Downloadsfd> get idleList => throw UnimplementedError();

  @override
  // TODO: implement isError
  bool get isError => throw UnimplementedError();

  @override
  // TODO: implement isLoading
  bool get isLoading => throw UnimplementedError();

  @override
  // TODO: implement searchresultList
  List<SearchResultData> get searchresultList => throw UnimplementedError();
}
