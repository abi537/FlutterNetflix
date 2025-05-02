import 'package:json_annotation/json_annotation.dart';


part 'discover_resp.g.dart';

@JsonSerializable()
class HotAndNewResp {
  @JsonKey(name: 'page')
  int? page;
@JsonKey(name: 'results')
  List<HotAndNewData> results;

  @JsonKey(name: 'total_pages')
  int? totalPages;

  @JsonKey(name: 'total_results')
  int? totalResults;

  HotAndNewResp({this.page, this.results=const [], this.totalPages, this.totalResults});

  factory HotAndNewResp.fromJson(Map<String, dynamic> json) {
    return _$HotAndNewRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotAndNewRespToJson(this);
}

@JsonSerializable()
class HotAndNewData {
  bool? adult;
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'genre_ids')
  List<int>? genreIds;
  int? id;
 
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  //orginal title movie
  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'original_name')
  String? originalName;
  String? overview;
  double? popularity;
  @JsonKey(name: 'poster_path')
  String? posterPath;
   @JsonKey(name: 'release_date')
  String? releaseDate;

  @JsonKey(name: 'first_air_date')
  String? firstAirDate;
  String? name;
  


  HotAndNewData({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
  
    this.originalLanguage,
    this.originalTitle,
    this.releaseDate,
    this.originalName,
    this.overview,
    this.popularity,
    this.posterPath,
    this.firstAirDate,
    this.name,
    
  });

  factory HotAndNewData.fromJson(Map<String, dynamic> json) {
    return _$HotAndNewDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotAndNewDataToJson(this);
}
