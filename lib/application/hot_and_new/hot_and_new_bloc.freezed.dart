// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hot_and_new_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HotAndNewEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HotAndNewEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HotAndNewEvent()';
}


}

/// @nodoc
class $HotAndNewEventCopyWith<$Res>  {
$HotAndNewEventCopyWith(HotAndNewEvent _, $Res Function(HotAndNewEvent) __);
}


/// @nodoc


class LoadDataComingsoon implements HotAndNewEvent {
  const LoadDataComingsoon();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadDataComingsoon);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HotAndNewEvent.loadDataComingsoon()';
}


}




/// @nodoc


class LoadDataEveryOneisWatching implements HotAndNewEvent {
  const LoadDataEveryOneisWatching();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadDataEveryOneisWatching);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HotAndNewEvent.loadDataEveryOneisWatching()';
}


}




/// @nodoc
mixin _$HotAndNewState {

 List<HotAndNewData> get comingSoonList; List<HotAndNewData> get everyOneisWatching; bool get isLoading; bool get isError;
/// Create a copy of HotAndNewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HotAndNewStateCopyWith<HotAndNewState> get copyWith => _$HotAndNewStateCopyWithImpl<HotAndNewState>(this as HotAndNewState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HotAndNewState&&const DeepCollectionEquality().equals(other.comingSoonList, comingSoonList)&&const DeepCollectionEquality().equals(other.everyOneisWatching, everyOneisWatching)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(comingSoonList),const DeepCollectionEquality().hash(everyOneisWatching),isLoading,isError);

@override
String toString() {
  return 'HotAndNewState(comingSoonList: $comingSoonList, everyOneisWatching: $everyOneisWatching, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class $HotAndNewStateCopyWith<$Res>  {
  factory $HotAndNewStateCopyWith(HotAndNewState value, $Res Function(HotAndNewState) _then) = _$HotAndNewStateCopyWithImpl;
@useResult
$Res call({
 List<HotAndNewData> comingSoonList, List<HotAndNewData> everyOneisWatching, bool isLoading, bool isError
});




}
/// @nodoc
class _$HotAndNewStateCopyWithImpl<$Res>
    implements $HotAndNewStateCopyWith<$Res> {
  _$HotAndNewStateCopyWithImpl(this._self, this._then);

  final HotAndNewState _self;
  final $Res Function(HotAndNewState) _then;

/// Create a copy of HotAndNewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? comingSoonList = null,Object? everyOneisWatching = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_self.copyWith(
comingSoonList: null == comingSoonList ? _self.comingSoonList : comingSoonList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,everyOneisWatching: null == everyOneisWatching ? _self.everyOneisWatching : everyOneisWatching // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _Initial implements HotAndNewState {
  const _Initial({required final  List<HotAndNewData> comingSoonList, required final  List<HotAndNewData> everyOneisWatching, required this.isLoading, required this.isError}): _comingSoonList = comingSoonList,_everyOneisWatching = everyOneisWatching;
  

 final  List<HotAndNewData> _comingSoonList;
@override List<HotAndNewData> get comingSoonList {
  if (_comingSoonList is EqualUnmodifiableListView) return _comingSoonList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comingSoonList);
}

 final  List<HotAndNewData> _everyOneisWatching;
@override List<HotAndNewData> get everyOneisWatching {
  if (_everyOneisWatching is EqualUnmodifiableListView) return _everyOneisWatching;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_everyOneisWatching);
}

@override final  bool isLoading;
@override final  bool isError;

/// Create a copy of HotAndNewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&const DeepCollectionEquality().equals(other._comingSoonList, _comingSoonList)&&const DeepCollectionEquality().equals(other._everyOneisWatching, _everyOneisWatching)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_comingSoonList),const DeepCollectionEquality().hash(_everyOneisWatching),isLoading,isError);

@override
String toString() {
  return 'HotAndNewState(comingSoonList: $comingSoonList, everyOneisWatching: $everyOneisWatching, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $HotAndNewStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 List<HotAndNewData> comingSoonList, List<HotAndNewData> everyOneisWatching, bool isLoading, bool isError
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of HotAndNewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? comingSoonList = null,Object? everyOneisWatching = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_Initial(
comingSoonList: null == comingSoonList ? _self._comingSoonList : comingSoonList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,everyOneisWatching: null == everyOneisWatching ? _self._everyOneisWatching : everyOneisWatching // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
