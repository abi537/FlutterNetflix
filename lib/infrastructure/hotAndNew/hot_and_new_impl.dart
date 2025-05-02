import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixproject/domain/HotandNew/hot_and_new_services.dart';
import 'package:netflixproject/domain/HotandNew/models/discover_resp.dart';
import 'package:netflixproject/domain/core/Failures/main_failures.dart';
import 'package:netflixproject/domain/core/api_end_point.dart';
//hot andnewserv vilichal hotand new impl obj ayirikkum return cheyyyanth
@LazySingleton(as: HotAndNewServices)
class HotAndNewImpl implements HotAndNewServices {

   final dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
      ),
    );
  @override
  Future<Either<MainFailures, HotAndNewResp>> getHotAndNewMovieData() async {
    try {
      // final response=await Dio(BaseOptions()).get(Apiendpoint.downloads);

      // final response = await dio.get(
      //   "https://api.themoviedb.org/3/movie/popular",
      //   queryParameters: {"api_key": "35695db18d3378ece5917cead65f199a"},
      // );
      final response = await dio.get(
        Apiendpoint.hotAndNewMovie,
      
      );
      print(response.data);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HotAndNewResp.fromJson(response.data);

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
  
  @override
  Future<Either<MainFailures, HotAndNewResp>> getHotAndNewTvData() async{
    final dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
      ),
    );
     try {
    
      final response = await dio.get(
        Apiendpoint.hotAndNewTv,
      
      );
      print(response.data);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HotAndNewResp.fromJson(response.data);

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



 


