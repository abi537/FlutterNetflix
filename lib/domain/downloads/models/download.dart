// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'download.freezed.dart';
// part 'download.g.dart';

// @freezed
// class Downloads with _$Downloads{
//   const factory Downloads({
//    @JsonKey(name: "poster_path") required String? posterPath,
//   }) = _Downloads;

//   factory Downloads.fromJson(Map<String, dynamic> json) => _$DownloadsFromJson(json);
// }

// class Downloads {
//   final String posterPath;

//   Downloads({required this.posterPath});

//   // Factory constructor to create an instance from JSON
//   factory Downloads.fromJson(Map<String, dynamic> json) {
//     return Downloads(
//       posterPath: json['poster_path'] ?? '', // default empty string if null
//     );
//   }

//   // Convert instance to JSON
//   Map<String, dynamic> toJson() {
//     return {
//       'poster_path': posterPath,
//     };
//   }
// }

// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'download.freezed.dart';
// part 'download.g.dart';

// @freezed
// class Downloadsfd with _$Downloadsfd {
//   const factory Downloadsfd({
//     @JsonKey(name: 'poster_path') required String? posterPath,
//   }) = _Downloadsfd;

//   factory Downloadsfd.fromJson(Map<String, dynamic> json) =>
//       _$DownloadsfdFromJson(json);

//   @override
//   // // TODO: implement posterPath
//   // String? get posterPath => throw UnimplementedError();

//   // @override
//   // Map<String, dynamic> toJson() {
//   //   // TODO: implement toJson
//   //   throw UnimplementedError();
//   // }
// }

import 'package:freezed_annotation/freezed_annotation.dart';

part 'download.freezed.dart';
part 'download.g.dart';

@freezed
class Downloadsfd with _$Downloadsfd {
  const factory Downloadsfd({
    @JsonKey(name: 'poster_path') required String? posterPath,
    @JsonKey(name: 'title') required String? title,
  }) = _Downloadsfd;

  factory Downloadsfd.fromJson(Map<String, dynamic> json) =>
      _$DownloadsfdFromJson(json);

  @override
  // TODO: implement posterPath
  String? get posterPath => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  @override
  // TODO: implement title
  String? get title => throw UnimplementedError();
}
