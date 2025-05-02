import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixproject/domain/core/Failures/main_failures.dart';
import 'package:netflixproject/domain/downloads/i_donload_repo.dart';
import 'package:netflixproject/domain/downloads/models/download.dart';
import 'package:netflixproject/domain/search/model/searchresp/search-service.dart';
import 'package:netflixproject/domain/search/model/searchresp/searchresp.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IdownloadsRepo _downloadServices;
  final SearchService _searchService;
  SearchBloc(this._downloadServices, this._searchService)
    : super(SearchState.initial()) {
    //idle state
    on<Initialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(
          SearchState(
            searchresultList: [],
            idleList: state.idleList,
            isLoading: false,
            isError: false,
          ),
        );
        return;
      }

      //get trending
      final _result = await _downloadServices.getDownloadimages();
      final _state = _result.fold(
        ((MainFailures f) {
          return SearchState(
            searchresultList: [],
            idleList: [],
            isLoading: false,
            isError: true,
          );
        }),
        ((List<Downloadsfd> list) {
          return SearchState(
            searchresultList: [],
            idleList: list,
            isLoading: false,
            isError: false,
          );
        }),
      );
      //show to ui
      emit(_state);
    });

    //search result state
    on<SearchMovie>((event, emit) async {
      //call serach movie api
      final _result = await _searchService.searchMovies(
        movieQuery: event.movieQuery,
      );
      print(_result);
      final state = _result.fold(
        (MainFailures f) {
          return SearchState(
            searchresultList: [],
            idleList: [],
            isLoading: false,
            isError: true,
          );
        },
        (Searchresp r) {
          return SearchState(
            searchresultList: r.results,
            idleList: [],
            isLoading: false,
            isError: false,
          );
        },
      );

      //show to UI
      emit(state);
    });
  }
}
