import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixproject/domain/core/Failures/main_failures.dart';
import 'package:netflixproject/domain/core/api_end_point.dart';
import 'package:netflixproject/domain/search/model/searchresp/search-service.dart';
import 'package:netflixproject/domain/search/model/searchresp/searchresp.dart';

@LazySingleton(as: SearchService)
class SearchImpl implements SearchService {
  @override
  Future<Either<MainFailures, Searchresp>> searchMovies({
    required String movieQuery,
  }) async {
    final dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
      ),
    );

    try {
      // final response=await Dio(BaseOptions()).get(Apiendpoint.downloads);

      // final response = await dio.get(
      //   "https://api.themoviedb.org/3/movie/popular",
      //   queryParameters: {"api_key": "35695db18d3378ece5917cead65f199a"},
      // );
      final response = await dio.get(
        Apiendpoint.search,
        queryParameters: {'query': movieQuery},
      );
      print(response.data);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = Searchresp.fromJson(response.data);

        print(result);
        return Right(result);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } on DioException catch (e) {
      print('Dio Error: ${e.message}');
      return const Left(MainFailures.clientFailure());
    } catch (e) {
      print('catch $e');
      return const Left(MainFailures.clientFailure());
    }
  }
}
