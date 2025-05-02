import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixproject/domain/core/Failures/main_failures.dart';
import 'package:netflixproject/domain/core/api_end_point.dart';
import 'package:netflixproject/domain/downloads/i_donload_repo.dart';
import 'package:netflixproject/domain/downloads/models/download.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: IdownloadsRepo)
class DownlaodRepository implements IdownloadsRepo {
  @override
  Future<Either<MainFailures, List<Downloadsfd>>> getDownloadimages() async {
    final dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
      ),
    );
    try {
      // final response=await Dio(BaseOptions()).get(Apiendpoint.downloads);
      // final response=await dio.get(Apiendpoint.downloads);
      final response = await dio.get(
        "https://api.themoviedb.org/3/movie/popular",
        queryParameters: {"api_key": "35695db18d3378ece5917cead65f199a"},
      );

      print(response.data);

      if (response.statusCode == 200 || response.statusCode == 201) {
        //map is used to make a list from alist
        final downloadlist =
            (response.data['results'] as List).map((e) {
              return Downloadsfd.fromJson(e);
            }).toList();

        // final List<Downloadsfd>downloadlist =[];
        // print(response.data);
        // for(final raw in response.data){
        //   downloadlist.add(Downloadsfd.fromJson(raw as Map<String,dynamic>));
        // }

        print(downloadlist);
        return Right(downloadlist);
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
