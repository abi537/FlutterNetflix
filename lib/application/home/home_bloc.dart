import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixproject/domain/HotandNew/hot_and_new_services.dart';
import 'package:netflixproject/domain/HotandNew/models/discover_resp.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HotAndNewServices _homeServices;
  
  HomeBloc(this._homeServices) : super(HomeState.initial()) {

    on<GetHomescreenData>((event, emit)async {
      // TODO: implement event handler

      //send loading to UI
    emit(state.copyWith(isLoading:true,isError:false));

      // get data
     final _movieResult=await _homeServices.getHotAndNewMovieData();
     final _tvResult=await _homeServices.getHotAndNewTvData();

    //  transformm the data

final state1= _movieResult.fold((failure){
return HomeState(pastYearmovieList: [],
stateId: DateTime.now().millisecondsSinceEpoch.toString(),
 trendingmovieList: [],
  tenseDramasmovieList: [], 
  southIndianmovieList: [], 
  trendingTvList: [], 
  isLoading: false,
   isError: true);
},
 (resp){
  final pastYear=resp.results;
  final trending=resp.results;
  final drama=resp.results;
  final southindian=resp.results;
  pastYear.shuffle() ;
  trending.shuffle() ;
  drama.shuffle() ;
  southindian.shuffle() ;

return HomeState( 
  stateId: DateTime.now().millisecondsSinceEpoch.toString(),
  pastYearmovieList:pastYear,
 trendingmovieList: trending,
  tenseDramasmovieList: drama, 
  southIndianmovieList: southindian, 
  trendingTvList: state.trendingTvList, 
  isLoading: false,
   isError: false);
});
emit(state1);


final state2= _tvResult.fold((failure){
return HomeState(pastYearmovieList: [],
stateId: DateTime.now().millisecondsSinceEpoch.toString(),
 trendingmovieList: [],
  tenseDramasmovieList: [], 
  southIndianmovieList: [], 
  trendingTvList: [], 
  isLoading: false,
   isError: true);
}, (res){
  final top10List=res.results;
  print("the length of top10list$top10List.length");
return HomeState(
  stateId: DateTime.now().millisecondsSinceEpoch.toString(),
  pastYearmovieList: state.pastYearmovieList, 
  trendingmovieList: state.trendingmovieList, 
  tenseDramasmovieList: state.tenseDramasmovieList,
   southIndianmovieList: state.southIndianmovieList,
    trendingTvList:top10List ,
     isLoading: false, 
     isError: false);
});
    // send to UI
    emit(state2);
    });
  }
}
