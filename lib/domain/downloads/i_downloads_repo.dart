import 'package:dartz/dartz.dart';
import 'package:dmflix/domain/downloads/models/downloads.dart';
import 'package:dmflix/domain/failures/main_failures.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailures, List<Downloads>>> getDownloadsImages();
}
