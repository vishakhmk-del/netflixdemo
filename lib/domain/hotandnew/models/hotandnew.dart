import 'package:json_annotation/json_annotation.dart';

part 'hotandnew.g.dart';

@JsonSerializable()
class Hotandnew {
  @JsonKey(name: 'page')
  int? page;
  @JsonKey(name: 'results')
  List<HotAndNewResult>? results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  Hotandnew({this.page, this.results, this.totalPages, this.totalResults});

  factory Hotandnew.fromJson(Map<String, dynamic> json) {
    return _$HotandnewFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotandnewToJson(this);
}

@JsonSerializable()
class HotAndNewResult {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'first_air_date')
  String? firstAirDate;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'original_name')
  String? originalName;
  @JsonKey(name: 'overview')
  String? overview;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  @JsonKey(name: 'title')
  String? title;

  HotAndNewResult({
    this.backdropPath,
    this.firstAirDate,
    this.id,
    this.name,
    this.originalName,
    this.overview,
    this.releaseDate,
    this.title
  });

  factory HotAndNewResult.fromJson(Map<String, dynamic> json) {
    return _$HotAndNewResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotAndNewResultToJson(this);
}