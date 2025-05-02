import 'package:dartz/dartz.dart';
import 'package:netflixproject/domain/core/Failures/main_failures.dart';
import 'package:netflixproject/domain/downloads/models/download.dart';

abstract class IdownloadsRepo {
  Future<Either<MainFailures, List<Downloadsfd>>> getDownloadimages();
}
