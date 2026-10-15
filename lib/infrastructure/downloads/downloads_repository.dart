import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dmflix/core/urls/urls.dart';
import 'package:dmflix/domain/api_url/api_url.dart';
import 'package:dmflix/domain/downloads/i_downloads_repo.dart';
import 'package:dmflix/domain/downloads/models/downloads.dart';
import 'package:dmflix/domain/failures/main_failures.dart';
import 'package:dmflix/infrastructure/api_key/api_key.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IDownloadsRepo)
class DownloadsRepository implements IDownloadsRepo {
  final Dio dioclient = Dio();
  DownloadsRepository() {
    dioclient.options = BaseOptions(
      baseUrl: baseUrl,
      // responseType: ResponseType.plain,
    );
  }
  @override
  Future<Either<MainFailures, List<Downloads>>> getDownloadsImages() async {
    try {
      final Response response = await dioclient.get(
        ApiEndPoints.downloads,
        options: Options(
          // responseType: ResponseType.plain,
          headers: {
            "Authorization": "Bearer $accessToken",
            "Accept": "application/json",
          },
        ),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadList =
            (response.data['results'] as List).map((e) {
              return Downloads.fromJson(e);
            }).toList();
        log(downloadList.toString());
        // print(downloadList);
        return Right(downloadList);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailures.clientFailure());
    }
  }
}
