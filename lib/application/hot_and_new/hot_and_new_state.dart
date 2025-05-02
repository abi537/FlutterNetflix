part of 'hot_and_new_bloc.dart';

@freezed
class HotAndNewState with _$HotAndNewState {
  const factory HotAndNewState(
    {
    required  final List<HotAndNewData> comingSoonList,
    required  final List<HotAndNewData> everyOneisWatching,
    required bool isLoading,
    required bool isError,

    }
  ) = _Initial;
  factory HotAndNewState.initial()=>HotAndNewState(
    comingSoonList: [],
    everyOneisWatching: [],
     isLoading: false,
     isError: false

  );
  
  @override
  // TODO: implement comingSoonList
  List<HotAndNewData> get comingSoonList => throw UnimplementedError();
  
  @override
  // TODO: implement everyOneisWatching
  List<HotAndNewData> get everyOneisWatching => throw UnimplementedError();
  
  @override
  // TODO: implement isError
  bool get isError => throw UnimplementedError();
  
  @override
  // TODO: implement isLoading
  bool get isLoading => throw UnimplementedError();
}
