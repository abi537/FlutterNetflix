import 'package:dartz/dartz.dart';
import 'package:netflixproject/domain/core/Failures/main_failures.dart';
import 'package:netflixproject/domain/search/model/searchresp/searchresp.dart';

abstract class SearchService {
  Future<Either<MainFailures, Searchresp>> searchMovies({
    required String movieQuery,
  });
}
