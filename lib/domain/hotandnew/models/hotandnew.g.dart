// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotandnew.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hotandnew _$HotandnewFromJson(Map<String, dynamic> json) => Hotandnew(
  page: (json['page'] as num?)?.toInt(),
  results:
      (json['results'] as List<dynamic>?)
          ?.map((e) => HotAndNewResult.fromJson(e as Map<String, dynamic>))
          .toList(),
  totalPages: (json['total_pages'] as num?)?.toInt(),
  totalResults: (json['total_results'] as num?)?.toInt(),
);

Map<String, dynamic> _$HotandnewToJson(Hotandnew instance) => <String, dynamic>{
  'page': instance.page,
  'results': instance.results,
  'total_pages': instance.totalPages,
  'total_results': instance.totalResults,
};

HotAndNewResult _$HotAndNewResultFromJson(Map<String, dynamic> json) =>
    HotAndNewResult(
      backdropPath: json['backdrop_path'] as String?,
      firstAirDate: json['first_air_date'] as String?,
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      originalName: json['original_name'] as String?,
      overview: json['overview'] as String?,
      releaseDate: json['release_date'] as String?,
      title: json['title'] as String?,
    )..posterPath = json['poster_path'] as String?;

Map<String, dynamic> _$HotAndNewResultToJson(HotAndNewResult instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'first_air_date': instance.firstAirDate,
      'id': instance.id,
      'name': instance.name,
      'original_name': instance.originalName,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
    };
