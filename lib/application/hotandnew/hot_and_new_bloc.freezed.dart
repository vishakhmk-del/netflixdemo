// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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


/// Adds pattern-matching-related methods to [HotAndNewEvent].
extension HotAndNewEventPatterns on HotAndNewEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadDataInComingSoon value)?  loadDataInComingSoon,TResult Function( LoadDataInEveryOneWatching value)?  loadDataInEveryOneWatching,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadDataInComingSoon() when loadDataInComingSoon != null:
return loadDataInComingSoon(_that);case LoadDataInEveryOneWatching() when loadDataInEveryOneWatching != null:
return loadDataInEveryOneWatching(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadDataInComingSoon value)  loadDataInComingSoon,required TResult Function( LoadDataInEveryOneWatching value)  loadDataInEveryOneWatching,}){
final _that = this;
switch (_that) {
case LoadDataInComingSoon():
return loadDataInComingSoon(_that);case LoadDataInEveryOneWatching():
return loadDataInEveryOneWatching(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadDataInComingSoon value)?  loadDataInComingSoon,TResult? Function( LoadDataInEveryOneWatching value)?  loadDataInEveryOneWatching,}){
final _that = this;
switch (_that) {
case LoadDataInComingSoon() when loadDataInComingSoon != null:
return loadDataInComingSoon(_that);case LoadDataInEveryOneWatching() when loadDataInEveryOneWatching != null:
return loadDataInEveryOneWatching(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadDataInComingSoon,TResult Function()?  loadDataInEveryOneWatching,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadDataInComingSoon() when loadDataInComingSoon != null:
return loadDataInComingSoon();case LoadDataInEveryOneWatching() when loadDataInEveryOneWatching != null:
return loadDataInEveryOneWatching();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadDataInComingSoon,required TResult Function()  loadDataInEveryOneWatching,}) {final _that = this;
switch (_that) {
case LoadDataInComingSoon():
return loadDataInComingSoon();case LoadDataInEveryOneWatching():
return loadDataInEveryOneWatching();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadDataInComingSoon,TResult? Function()?  loadDataInEveryOneWatching,}) {final _that = this;
switch (_that) {
case LoadDataInComingSoon() when loadDataInComingSoon != null:
return loadDataInComingSoon();case LoadDataInEveryOneWatching() when loadDataInEveryOneWatching != null:
return loadDataInEveryOneWatching();case _:
  return null;

}
}

}

/// @nodoc


class LoadDataInComingSoon implements HotAndNewEvent {
  const LoadDataInComingSoon();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadDataInComingSoon);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HotAndNewEvent.loadDataInComingSoon()';
}


}




/// @nodoc


class LoadDataInEveryOneWatching implements HotAndNewEvent {
  const LoadDataInEveryOneWatching();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadDataInEveryOneWatching);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HotAndNewEvent.loadDataInEveryOneWatching()';
}


}




/// @nodoc
mixin _$HotAndNewState {

 List<HotAndNewResult> get comingSoonList; List<HotAndNewResult> get everyOneWatchingList; bool get isLoading; bool get isError;
/// Create a copy of HotAndNewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HotAndNewStateCopyWith<HotAndNewState> get copyWith => _$HotAndNewStateCopyWithImpl<HotAndNewState>(this as HotAndNewState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HotAndNewState&&const DeepCollectionEquality().equals(other.comingSoonList, comingSoonList)&&const DeepCollectionEquality().equals(other.everyOneWatchingList, everyOneWatchingList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(comingSoonList),const DeepCollectionEquality().hash(everyOneWatchingList),isLoading,isError);

@override
String toString() {
  return 'HotAndNewState(comingSoonList: $comingSoonList, everyOneWatchingList: $everyOneWatchingList, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class $HotAndNewStateCopyWith<$Res>  {
  factory $HotAndNewStateCopyWith(HotAndNewState value, $Res Function(HotAndNewState) _then) = _$HotAndNewStateCopyWithImpl;
@useResult
$Res call({
 List<HotAndNewResult> comingSoonList, List<HotAndNewResult> everyOneWatchingList, bool isLoading, bool isError
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
@pragma('vm:prefer-inline') @override $Res call({Object? comingSoonList = null,Object? everyOneWatchingList = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_self.copyWith(
comingSoonList: null == comingSoonList ? _self.comingSoonList : comingSoonList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewResult>,everyOneWatchingList: null == everyOneWatchingList ? _self.everyOneWatchingList : everyOneWatchingList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewResult>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [HotAndNewState].
extension HotAndNewStatePatterns on HotAndNewState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Initial value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Initial value)  $default,){
final _that = this;
switch (_that) {
case _Initial():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Initial value)?  $default,){
final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<HotAndNewResult> comingSoonList,  List<HotAndNewResult> everyOneWatchingList,  bool isLoading,  bool isError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that.comingSoonList,_that.everyOneWatchingList,_that.isLoading,_that.isError);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<HotAndNewResult> comingSoonList,  List<HotAndNewResult> everyOneWatchingList,  bool isLoading,  bool isError)  $default,) {final _that = this;
switch (_that) {
case _Initial():
return $default(_that.comingSoonList,_that.everyOneWatchingList,_that.isLoading,_that.isError);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<HotAndNewResult> comingSoonList,  List<HotAndNewResult> everyOneWatchingList,  bool isLoading,  bool isError)?  $default,) {final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that.comingSoonList,_that.everyOneWatchingList,_that.isLoading,_that.isError);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HotAndNewState {
  const _Initial({required final  List<HotAndNewResult> comingSoonList, required final  List<HotAndNewResult> everyOneWatchingList, required this.isLoading, required this.isError}): _comingSoonList = comingSoonList,_everyOneWatchingList = everyOneWatchingList;
  

 final  List<HotAndNewResult> _comingSoonList;
@override List<HotAndNewResult> get comingSoonList {
  if (_comingSoonList is EqualUnmodifiableListView) return _comingSoonList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comingSoonList);
}

 final  List<HotAndNewResult> _everyOneWatchingList;
@override List<HotAndNewResult> get everyOneWatchingList {
  if (_everyOneWatchingList is EqualUnmodifiableListView) return _everyOneWatchingList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_everyOneWatchingList);
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&const DeepCollectionEquality().equals(other._comingSoonList, _comingSoonList)&&const DeepCollectionEquality().equals(other._everyOneWatchingList, _everyOneWatchingList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_comingSoonList),const DeepCollectionEquality().hash(_everyOneWatchingList),isLoading,isError);

@override
String toString() {
  return 'HotAndNewState(comingSoonList: $comingSoonList, everyOneWatchingList: $everyOneWatchingList, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $HotAndNewStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 List<HotAndNewResult> comingSoonList, List<HotAndNewResult> everyOneWatchingList, bool isLoading, bool isError
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
@override @pragma('vm:prefer-inline') $Res call({Object? comingSoonList = null,Object? everyOneWatchingList = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_Initial(
comingSoonList: null == comingSoonList ? _self._comingSoonList : comingSoonList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewResult>,everyOneWatchingList: null == everyOneWatchingList ? _self._everyOneWatchingList : everyOneWatchingList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewResult>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
