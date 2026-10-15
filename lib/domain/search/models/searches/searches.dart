import 'package:dmflix/core/urls/urls.dart';
import 'package:json_annotation/json_annotation.dart';

part 'searches.g.dart';

@JsonSerializable()
class Searches {
  int? page;
  @JsonKey(name: 'results')
  List<SearchResultData> results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  Searches({
    this.page,
    this.results = const [],
    this.totalPages,
    this.totalResults,
  });

  factory Searches.fromJson(Map<String, dynamic> json) {
    return _$SearchesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchesToJson(this);
}

@JsonSerializable()
class SearchResultData {
  int? id;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  String? title;

  String get posterImageUrl => '$imageAppendUrl$posterPath';

  SearchResultData({
    this.id,
    this.originalTitle,
    this.posterPath,
    this.releaseDate,
    this.title,
  });

  factory SearchResultData.fromJson(Map<String, dynamic> json) {
    return _$SearchResultDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResultDataToJson(this);
}
