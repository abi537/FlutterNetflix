import 'package:dartz/dartz.dart';
import 'package:netflixproject/domain/HotandNew/models/discover_resp.dart';
import 'package:netflixproject/domain/core/Failures/main_failures.dart';

abstract class HotAndNewServices {
  Future<Either<MainFailures,HotAndNewResp>> getHotAndNewMovieData();
  Future<Either<MainFailures,HotAndNewResp>> getHotAndNewTvData();
}
