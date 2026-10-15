import 'package:dartz/dartz.dart';
import 'package:dmflix/domain/failures/main_failures.dart';
import 'package:dmflix/domain/hotandnew/models/hotandnew.dart';

abstract class HotAndNewService {
  Future <Either<MainFailures,Hotandnew>> getHotAndNewTvData();
  Future <Either<MainFailures,Hotandnew>> getHotAndNewMovieData();

}