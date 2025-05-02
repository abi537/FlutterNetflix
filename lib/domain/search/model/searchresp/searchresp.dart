import 'package:json_annotation/json_annotation.dart';
import 'package:netflixproject/core/string.dart';

part 'searchresp.g.dart';

@JsonSerializable()
class Searchresp {
  List<SearchResultData> results;

  Searchresp({this.results = const []});

  factory Searchresp.fromJson(Map<String, dynamic> json) {
    return _$SearchrespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchrespToJson(this);
}

@JsonSerializable()
class SearchResultData {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  String get posterimageUrl => '$imageAppent$posterPath';

  SearchResultData({this.id, this.originalTitle});

  factory SearchResultData.fromJson(Map<String, dynamic> json) {
    return _$SearchResultDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResultDataToJson(this);
}
