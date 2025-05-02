// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Downloadsfd {

@JsonKey(name: 'poster_path') String? get posterPath;@JsonKey(name: 'title') String? get title;
/// Create a copy of Downloadsfd
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadsfdCopyWith<Downloadsfd> get copyWith => _$DownloadsfdCopyWithImpl<Downloadsfd>(this as Downloadsfd, _$identity);

  /// Serializes this Downloadsfd to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Downloadsfd&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,posterPath,title);

@override
String toString() {
  return 'Downloadsfd(posterPath: $posterPath, title: $title)';
}


}

/// @nodoc
abstract mixin class $DownloadsfdCopyWith<$Res>  {
  factory $DownloadsfdCopyWith(Downloadsfd value, $Res Function(Downloadsfd) _then) = _$DownloadsfdCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'title') String? title
});




}
/// @nodoc
class _$DownloadsfdCopyWithImpl<$Res>
    implements $DownloadsfdCopyWith<$Res> {
  _$DownloadsfdCopyWithImpl(this._self, this._then);

  final Downloadsfd _self;
  final $Res Function(Downloadsfd) _then;

/// Create a copy of Downloadsfd
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? posterPath = freezed,Object? title = freezed,}) {
  return _then(_self.copyWith(
posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Downloadsfd implements Downloadsfd {
  const _Downloadsfd({@JsonKey(name: 'poster_path') required this.posterPath, @JsonKey(name: 'title') required this.title});
  factory _Downloadsfd.fromJson(Map<String, dynamic> json) => _$DownloadsfdFromJson(json);

@override@JsonKey(name: 'poster_path') final  String? posterPath;
@override@JsonKey(name: 'title') final  String? title;

/// Create a copy of Downloadsfd
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadsfdCopyWith<_Downloadsfd> get copyWith => __$DownloadsfdCopyWithImpl<_Downloadsfd>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DownloadsfdToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Downloadsfd&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,posterPath,title);

@override
String toString() {
  return 'Downloadsfd(posterPath: $posterPath, title: $title)';
}


}

/// @nodoc
abstract mixin class _$DownloadsfdCopyWith<$Res> implements $DownloadsfdCopyWith<$Res> {
  factory _$DownloadsfdCopyWith(_Downloadsfd value, $Res Function(_Downloadsfd) _then) = __$DownloadsfdCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'title') String? title
});




}
/// @nodoc
class __$DownloadsfdCopyWithImpl<$Res>
    implements _$DownloadsfdCopyWith<$Res> {
  __$DownloadsfdCopyWithImpl(this._self, this._then);

  final _Downloadsfd _self;
  final $Res Function(_Downloadsfd) _then;

/// Create a copy of Downloadsfd
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? posterPath = freezed,Object? title = freezed,}) {
  return _then(_Downloadsfd(
posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
