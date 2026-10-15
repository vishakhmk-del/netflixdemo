// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searches.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Searches _$SearchesFromJson(Map<String, dynamic> json) => Searches(
  page: (json['page'] as num?)?.toInt(),
  results:
      (json['results'] as List<dynamic>?)
          ?.map((e) => SearchResultData.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  totalPages: (json['total_pages'] as num?)?.toInt(),
  totalResults: (json['total_results'] as num?)?.toInt(),
);

Map<String, dynamic> _$SearchesToJson(Searches instance) => <String, dynamic>{
  'page': instance.page,
  'results': instance.results,
  'total_pages': instance.totalPages,
  'total_results': instance.totalResults,
};

SearchResultData _$SearchResultDataFromJson(Map<String, dynamic> json) =>
    SearchResultData(
      id: (json['id'] as num?)?.toInt(),
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$SearchResultDataToJson(SearchResultData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
    };
