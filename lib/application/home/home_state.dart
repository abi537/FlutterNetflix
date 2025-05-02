part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required String stateId,
    required List<HotAndNewData>pastYearmovieList,
   required List<HotAndNewData>trendingmovieList,
   required List<HotAndNewData>tenseDramasmovieList,
   required List<HotAndNewData>southIndianmovieList,
   required List<HotAndNewData>trendingTvList,
   required bool isLoading,
   required bool isError
  }) = _Initial;

  factory HomeState.initial()=>HomeState(
    stateId:'0',
    pastYearmovieList: [],
     trendingmovieList: [],
      tenseDramasmovieList: [], 
      southIndianmovieList: [], 
      trendingTvList: [],
       isLoading: false, 
       isError: false);
       
         @override
         // TODO: implement isError
         bool get isError => throw UnimplementedError();
       
         @override
         // TODO: implement isLoading
         bool get isLoading => throw UnimplementedError();
       
         @override
         // TODO: implement pastYearmovieList
         List<HotAndNewData> get pastYearmovieList => throw UnimplementedError();
       
         @override
         // TODO: implement southIndianmovieList
         List<HotAndNewData> get southIndianmovieList => throw UnimplementedError();
       
         @override
         // TODO: implement stateId
         String get stateId => throw UnimplementedError();
       
         @override
         // TODO: implement tenseDramasmovieList
         List<HotAndNewData> get tenseDramasmovieList => throw UnimplementedError();
       
         @override
         // TODO: implement trendingTvList
         List<HotAndNewData> get trendingTvList => throw UnimplementedError();
       
         @override
         // TODO: implement trendingmovieList
         List<HotAndNewData> get trendingmovieList => throw UnimplementedError();
}
