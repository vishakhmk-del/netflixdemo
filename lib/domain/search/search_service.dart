import 'package:dartz/dartz.dart';
import 'package:dmflix/domain/failures/main_failures.dart';
import 'package:dmflix/domain/search/models/searches/searches.dart';

abstract class SearchService {
  Future<Either<MainFailures, Searches>> searchMovies({
    required String movieQuery,
  });
}
