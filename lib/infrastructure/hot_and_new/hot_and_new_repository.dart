import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dmflix/core/urls/urls.dart';
import 'package:dmflix/domain/api_url/api_url.dart';
import 'package:dmflix/domain/failures/main_failures.dart';
import 'package:dmflix/domain/hotandnew/hot_and_new_service.dart';
import 'package:dmflix/domain/hotandnew/models/hotandnew.dart';
import 'package:dmflix/infrastructure/api_key/api_key.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: HotAndNewService)
class HotAndNewRepository implements HotAndNewService{
  final Dio dioclient = Dio();
  HotAndNewRepository() {
    dioclient.options = BaseOptions(
      baseUrl: baseUrl,
      // responseType: ResponseType.plain,
    );
  }
  @override
  Future<Either<MainFailures, Hotandnew>> getHotAndNewMovieData() async{
    try {
      final Response response = await dioclient.get(
        ApiEndPoints.hotandnewMovies,
        options: Options(
          // responseType: ResponseType.plain,
          headers: {
            "Authorization": "Bearer $accessToken",
            "Accept": "application/json",
          },
        ),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final hotandnewResp = Hotandnew.fromJson(response.data);
        // print(downloadList);
        return Right(hotandnewResp);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    }on DioException catch(e){
      log(e.toString());
      
    return const Left(MainFailures.clientFailure());

    }
     catch (e) {
      log(e.toString());
      return const Left(MainFailures.clientFailure());
    }
  }

  @override
  Future<Either<MainFailures, Hotandnew>> getHotAndNewTvData() async{
    try {
      final Response response = await dioclient.get(
        ApiEndPoints.hotandnewTv,
        options: Options(
          // responseType: ResponseType.plain,
          headers: {
            "Authorization": "Bearer $accessToken",
            "Accept": "application/json",
          },
        ),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final hotandnewResp = Hotandnew.fromJson(response.data);
        // print(downloadList);
        return Right(hotandnewResp);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    }on DioException catch(e){
      log(e.toString());
      
    return const Left(MainFailures.clientFailure());

    }
     catch (e) {
      log(e.toString());
      return const Left(MainFailures.clientFailure());
    }
  }
    
}