import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixproject/domain/HotandNew/hot_and_new_services.dart';
import 'package:netflixproject/domain/HotandNew/models/discover_resp.dart';
import 'package:netflixproject/domain/core/Failures/main_failures.dart';

part 'hot_and_new_event.dart';
part 'hot_and_new_state.dart';
part 'hot_and_new_bloc.freezed.dart';

//ee service ee bloc ilekk inject cheyyan vendiyan injectable ue cheyyane
@injectable
class HotAndNewBloc extends Bloc<HotAndNewEvent, HotAndNewState> {
  final HotAndNewServices _hotAndNewServices;
  HotAndNewBloc(this._hotAndNewServices) : super(HotAndNewState.initial()) {
    //get hotandnew moviedata
    on<LoadDataComingsoon>((event, emit)async {
      //send loading to ui
      emit(HotAndNewState(
        comingSoonList: [],
         everyOneisWatching: [],
          isLoading: true,
           isError: false));

     //get data from remote
    final _result=await _hotAndNewServices.getHotAndNewMovieData();

    //data to state
  final _newState=  _result.fold((MainFailures f){
      return HotAndNewState(
        comingSoonList: [],
       everyOneisWatching: [],
        isLoading: false, 
        isError: true);
    }, 
    
    (HotAndNewResp resp){
      return HotAndNewState(
        comingSoonList: resp.results,
       everyOneisWatching: state.everyOneisWatching,
        isLoading: false, 
        isError: false);
    },);
    //i think  sent to UI
    emit(_newState);
    });

     on<LoadDataEveryOneisWatching>((event, emit)async{
     final _result=await _hotAndNewServices.getHotAndNewTvData();
   //on<LoadDataComingsoon>((event, emit)async {
      //send loading to ui
      emit(HotAndNewState(
        comingSoonList: [],
         everyOneisWatching: [],
          isLoading: true,
           isError: false));

     //get data from remote
    final _resultv=await _hotAndNewServices.getHotAndNewTvData();

    //data to state
  final _newtvState=  _resultv.fold((MainFailures f){
      return HotAndNewState(
        comingSoonList: [],
       everyOneisWatching: [],
        isLoading: false, 
        isError: true);
    }, 
    
    (HotAndNewResp resp){
      return HotAndNewState(
        comingSoonList: state.comingSoonList,
       everyOneisWatching:  resp.results,
        isLoading: false, 
        isError: false);
    },);
    //i think  sent to UI
    emit(_newtvState);
    
    });
   // });
  }
}
