// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:netflixproject/application/downloads/downloads_bloc.dart'
    as _i712;
import 'package:netflixproject/application/fast_laught/fast_laugh_bloc.dart'
    as _i847;
import 'package:netflixproject/application/home/home_bloc.dart' as _i772;
import 'package:netflixproject/application/hot_and_new/hot_and_new_bloc.dart'
    as _i1007;
import 'package:netflixproject/application/search/search_bloc.dart' as _i736;
import 'package:netflixproject/domain/downloads/i_donload_repo.dart' as _i659;
import 'package:netflixproject/domain/HotandNew/hot_and_new_services.dart'
    as _i125;
import 'package:netflixproject/domain/search/model/searchresp/search-service.dart'
    as _i887;
import 'package:netflixproject/infrastructure/Downloads/downlaod_repository.dart'
    as _i776;
import 'package:netflixproject/infrastructure/hotAndNew/hot_and_new_impl.dart'
    as _i364;
import 'package:netflixproject/infrastructure/search/search_impl.dart' as _i764;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i659.IdownloadsRepo>(() => _i776.DownlaodRepository());
    gh.lazySingleton<_i887.SearchService>(() => _i764.SearchImpl());
    gh.lazySingleton<_i125.HotAndNewServices>(() => _i364.HotAndNewImpl());
    gh.factory<_i712.DownloadsBloc>(
      () => _i712.DownloadsBloc(gh<_i659.IdownloadsRepo>()),
    );
    gh.factory<_i772.HomeBloc>(
      () => _i772.HomeBloc(gh<_i125.HotAndNewServices>()),
    );
    gh.factory<_i847.FastLaughBloc>(
      () => _i847.FastLaughBloc(gh<_i659.IdownloadsRepo>()),
    );
    gh.factory<_i1007.HotAndNewBloc>(
      () => _i1007.HotAndNewBloc(gh<_i125.HotAndNewServices>()),
    );
    gh.factory<_i736.SearchBloc>(
      () => _i736.SearchBloc(
        gh<_i659.IdownloadsRepo>(),
        gh<_i887.SearchService>(),
      ),
    );
    return this;
  }
}
