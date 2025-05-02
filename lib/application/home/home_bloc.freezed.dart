// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// @nodoc


class GetHomescreenData implements HomeEvent {
  const GetHomescreenData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetHomescreenData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.getHomescreenData()';
}


}




/// @nodoc
mixin _$HomeState {

 String get stateId; List<HotAndNewData> get pastYearmovieList; List<HotAndNewData> get trendingmovieList; List<HotAndNewData> get tenseDramasmovieList; List<HotAndNewData> get southIndianmovieList; List<HotAndNewData> get trendingTvList; bool get isLoading; bool get isError;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.stateId, stateId) || other.stateId == stateId)&&const DeepCollectionEquality().equals(other.pastYearmovieList, pastYearmovieList)&&const DeepCollectionEquality().equals(other.trendingmovieList, trendingmovieList)&&const DeepCollectionEquality().equals(other.tenseDramasmovieList, tenseDramasmovieList)&&const DeepCollectionEquality().equals(other.southIndianmovieList, southIndianmovieList)&&const DeepCollectionEquality().equals(other.trendingTvList, trendingTvList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,stateId,const DeepCollectionEquality().hash(pastYearmovieList),const DeepCollectionEquality().hash(trendingmovieList),const DeepCollectionEquality().hash(tenseDramasmovieList),const DeepCollectionEquality().hash(southIndianmovieList),const DeepCollectionEquality().hash(trendingTvList),isLoading,isError);

@override
String toString() {
  return 'HomeState(stateId: $stateId, pastYearmovieList: $pastYearmovieList, trendingmovieList: $trendingmovieList, tenseDramasmovieList: $tenseDramasmovieList, southIndianmovieList: $southIndianmovieList, trendingTvList: $trendingTvList, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 String stateId, List<HotAndNewData> pastYearmovieList, List<HotAndNewData> trendingmovieList, List<HotAndNewData> tenseDramasmovieList, List<HotAndNewData> southIndianmovieList, List<HotAndNewData> trendingTvList, bool isLoading, bool isError
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stateId = null,Object? pastYearmovieList = null,Object? trendingmovieList = null,Object? tenseDramasmovieList = null,Object? southIndianmovieList = null,Object? trendingTvList = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_self.copyWith(
stateId: null == stateId ? _self.stateId : stateId // ignore: cast_nullable_to_non_nullable
as String,pastYearmovieList: null == pastYearmovieList ? _self.pastYearmovieList : pastYearmovieList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,trendingmovieList: null == trendingmovieList ? _self.trendingmovieList : trendingmovieList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,tenseDramasmovieList: null == tenseDramasmovieList ? _self.tenseDramasmovieList : tenseDramasmovieList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,southIndianmovieList: null == southIndianmovieList ? _self.southIndianmovieList : southIndianmovieList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,trendingTvList: null == trendingTvList ? _self.trendingTvList : trendingTvList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _Initial implements HomeState {
  const _Initial({required this.stateId, required final  List<HotAndNewData> pastYearmovieList, required final  List<HotAndNewData> trendingmovieList, required final  List<HotAndNewData> tenseDramasmovieList, required final  List<HotAndNewData> southIndianmovieList, required final  List<HotAndNewData> trendingTvList, required this.isLoading, required this.isError}): _pastYearmovieList = pastYearmovieList,_trendingmovieList = trendingmovieList,_tenseDramasmovieList = tenseDramasmovieList,_southIndianmovieList = southIndianmovieList,_trendingTvList = trendingTvList;
  

@override final  String stateId;
 final  List<HotAndNewData> _pastYearmovieList;
@override List<HotAndNewData> get pastYearmovieList {
  if (_pastYearmovieList is EqualUnmodifiableListView) return _pastYearmovieList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pastYearmovieList);
}

 final  List<HotAndNewData> _trendingmovieList;
@override List<HotAndNewData> get trendingmovieList {
  if (_trendingmovieList is EqualUnmodifiableListView) return _trendingmovieList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trendingmovieList);
}

 final  List<HotAndNewData> _tenseDramasmovieList;
@override List<HotAndNewData> get tenseDramasmovieList {
  if (_tenseDramasmovieList is EqualUnmodifiableListView) return _tenseDramasmovieList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tenseDramasmovieList);
}

 final  List<HotAndNewData> _southIndianmovieList;
@override List<HotAndNewData> get southIndianmovieList {
  if (_southIndianmovieList is EqualUnmodifiableListView) return _southIndianmovieList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_southIndianmovieList);
}

 final  List<HotAndNewData> _trendingTvList;
@override List<HotAndNewData> get trendingTvList {
  if (_trendingTvList is EqualUnmodifiableListView) return _trendingTvList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trendingTvList);
}

@override final  bool isLoading;
@override final  bool isError;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.stateId, stateId) || other.stateId == stateId)&&const DeepCollectionEquality().equals(other._pastYearmovieList, _pastYearmovieList)&&const DeepCollectionEquality().equals(other._trendingmovieList, _trendingmovieList)&&const DeepCollectionEquality().equals(other._tenseDramasmovieList, _tenseDramasmovieList)&&const DeepCollectionEquality().equals(other._southIndianmovieList, _southIndianmovieList)&&const DeepCollectionEquality().equals(other._trendingTvList, _trendingTvList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,stateId,const DeepCollectionEquality().hash(_pastYearmovieList),const DeepCollectionEquality().hash(_trendingmovieList),const DeepCollectionEquality().hash(_tenseDramasmovieList),const DeepCollectionEquality().hash(_southIndianmovieList),const DeepCollectionEquality().hash(_trendingTvList),isLoading,isError);

@override
String toString() {
  return 'HomeState(stateId: $stateId, pastYearmovieList: $pastYearmovieList, trendingmovieList: $trendingmovieList, tenseDramasmovieList: $tenseDramasmovieList, southIndianmovieList: $southIndianmovieList, trendingTvList: $trendingTvList, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 String stateId, List<HotAndNewData> pastYearmovieList, List<HotAndNewData> trendingmovieList, List<HotAndNewData> tenseDramasmovieList, List<HotAndNewData> southIndianmovieList, List<HotAndNewData> trendingTvList, bool isLoading, bool isError
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stateId = null,Object? pastYearmovieList = null,Object? trendingmovieList = null,Object? tenseDramasmovieList = null,Object? southIndianmovieList = null,Object? trendingTvList = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_Initial(
stateId: null == stateId ? _self.stateId : stateId // ignore: cast_nullable_to_non_nullable
as String,pastYearmovieList: null == pastYearmovieList ? _self._pastYearmovieList : pastYearmovieList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,trendingmovieList: null == trendingmovieList ? _self._trendingmovieList : trendingmovieList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,tenseDramasmovieList: null == tenseDramasmovieList ? _self._tenseDramasmovieList : tenseDramasmovieList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,southIndianmovieList: null == southIndianmovieList ? _self._southIndianmovieList : southIndianmovieList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,trendingTvList: null == trendingTvList ? _self._trendingTvList : trendingTvList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
