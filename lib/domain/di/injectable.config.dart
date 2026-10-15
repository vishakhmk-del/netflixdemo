// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dmflix/application/downloads/downloads_bloc.dart' as _i729;
import 'package:dmflix/application/fastlaugh/fast_laugh_bloc.dart' as _i972;
import 'package:dmflix/application/hotandnew/hot_and_new_bloc.dart' as _i862;
import 'package:dmflix/application/search/search_bloc.dart' as _i131;
import 'package:dmflix/domain/downloads/i_downloads_repo.dart' as _i357;
import 'package:dmflix/domain/hotandnew/hot_and_new_service.dart' as _i87;
import 'package:dmflix/domain/search/search_service.dart' as _i295;
import 'package:dmflix/infrastructure/downloads/downloads_repository.dart'
    as _i618;
import 'package:dmflix/infrastructure/hot_and_new/hot_and_new_repository.dart'
    as _i899;
import 'package:dmflix/infrastructure/search/search_repository.dart' as _i931;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i87.HotAndNewService>(() => _i899.HotAndNewRepository());
    gh.factory<_i862.HotAndNewBloc>(
      () => _i862.HotAndNewBloc(gh<_i87.HotAndNewService>()),
    );
    gh.lazySingleton<_i295.SearchService>(() => _i931.SearchRepository());
    gh.lazySingleton<_i357.IDownloadsRepo>(() => _i618.DownloadsRepository());
    gh.factory<_i972.FastLaughBloc>(
      () => _i972.FastLaughBloc(gh<_i357.IDownloadsRepo>()),
    );
    gh.factory<_i729.DownloadsBloc>(
      () => _i729.DownloadsBloc(gh<_i357.IDownloadsRepo>()),
    );
    gh.factory<_i131.SearchBloc>(
      () => _i131.SearchBloc(
        gh<_i295.SearchService>(),
        gh<_i357.IDownloadsRepo>(),
      ),
    );
    return this;
  }
}
