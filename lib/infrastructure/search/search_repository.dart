import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dmflix/core/urls/urls.dart';
import 'package:dmflix/domain/api_url/api_url.dart';
import 'package:dmflix/domain/failures/main_failures.dart';
import 'package:dmflix/domain/search/search_service.dart';
import 'package:dmflix/domain/search/models/searches/searches.dart';
import 'package:dmflix/infrastructure/api_key/api_key.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SearchService)
class SearchRepository implements SearchService {
  final Dio dioclient = Dio();
  SearchRepository() {
    dioclient.options = BaseOptions(
      baseUrl: baseUrl,
      // responseType: ResponseType.plain,
    );
  }
  @override
  Future<Either<MainFailures, Searches>> searchMovies({
    required String movieQuery,
  }) async {
    try {
      final Response response = await dioclient.get(
        ApiEndPoints.search,
        queryParameters: {'query': movieQuery},
        options: Options(
          // responseType: ResponseType.plain,
          headers: {
            "Authorization": "Bearer $accessToken",
            "Accept": "application/json",
          },
        ),
      );
      // log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final searchList = Searches.fromJson(response.data);
        // print(downloadList);
        return Right(searchList);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailures.clientFailure());
    }
  }
}
