// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fast_laugh_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FastLaughEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FastLaughEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FastLaughEvent()';
}


}

/// @nodoc
class $FastLaughEventCopyWith<$Res>  {
$FastLaughEventCopyWith(FastLaughEvent _, $Res Function(FastLaughEvent) __);
}


/// Adds pattern-matching-related methods to [FastLaughEvent].
extension FastLaughEventPatterns on FastLaughEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initialize value)?  initialize,TResult Function( LikedVideo value)?  likedVideo,TResult Function( UnLikedVideo value)?  unlikeVideo,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initialize() when initialize != null:
return initialize(_that);case LikedVideo() when likedVideo != null:
return likedVideo(_that);case UnLikedVideo() when unlikeVideo != null:
return unlikeVideo(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initialize value)  initialize,required TResult Function( LikedVideo value)  likedVideo,required TResult Function( UnLikedVideo value)  unlikeVideo,}){
final _that = this;
switch (_that) {
case Initialize():
return initialize(_that);case LikedVideo():
return likedVideo(_that);case UnLikedVideo():
return unlikeVideo(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initialize value)?  initialize,TResult? Function( LikedVideo value)?  likedVideo,TResult? Function( UnLikedVideo value)?  unlikeVideo,}){
final _that = this;
switch (_that) {
case Initialize() when initialize != null:
return initialize(_that);case LikedVideo() when likedVideo != null:
return likedVideo(_that);case UnLikedVideo() when unlikeVideo != null:
return unlikeVideo(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initialize,TResult Function( int id)?  likedVideo,TResult Function( int id)?  unlikeVideo,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initialize() when initialize != null:
return initialize();case LikedVideo() when likedVideo != null:
return likedVideo(_that.id);case UnLikedVideo() when unlikeVideo != null:
return unlikeVideo(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initialize,required TResult Function( int id)  likedVideo,required TResult Function( int id)  unlikeVideo,}) {final _that = this;
switch (_that) {
case Initialize():
return initialize();case LikedVideo():
return likedVideo(_that.id);case UnLikedVideo():
return unlikeVideo(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initialize,TResult? Function( int id)?  likedVideo,TResult? Function( int id)?  unlikeVideo,}) {final _that = this;
switch (_that) {
case Initialize() when initialize != null:
return initialize();case LikedVideo() when likedVideo != null:
return likedVideo(_that.id);case UnLikedVideo() when unlikeVideo != null:
return unlikeVideo(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class Initialize implements FastLaughEvent {
  const Initialize();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initialize);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FastLaughEvent.initialize()';
}


}




/// @nodoc


class LikedVideo implements FastLaughEvent {
  const LikedVideo({required this.id});
  

 final  int id;

/// Create a copy of FastLaughEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LikedVideoCopyWith<LikedVideo> get copyWith => _$LikedVideoCopyWithImpl<LikedVideo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikedVideo&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'FastLaughEvent.likedVideo(id: $id)';
}


}

/// @nodoc
abstract mixin class $LikedVideoCopyWith<$Res> implements $FastLaughEventCopyWith<$Res> {
  factory $LikedVideoCopyWith(LikedVideo value, $Res Function(LikedVideo) _then) = _$LikedVideoCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$LikedVideoCopyWithImpl<$Res>
    implements $LikedVideoCopyWith<$Res> {
  _$LikedVideoCopyWithImpl(this._self, this._then);

  final LikedVideo _self;
  final $Res Function(LikedVideo) _then;

/// Create a copy of FastLaughEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(LikedVideo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UnLikedVideo implements FastLaughEvent {
  const UnLikedVideo({required this.id});
  

 final  int id;

/// Create a copy of FastLaughEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnLikedVideoCopyWith<UnLikedVideo> get copyWith => _$UnLikedVideoCopyWithImpl<UnLikedVideo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnLikedVideo&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'FastLaughEvent.unlikeVideo(id: $id)';
}


}

/// @nodoc
abstract mixin class $UnLikedVideoCopyWith<$Res> implements $FastLaughEventCopyWith<$Res> {
  factory $UnLikedVideoCopyWith(UnLikedVideo value, $Res Function(UnLikedVideo) _then) = _$UnLikedVideoCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$UnLikedVideoCopyWithImpl<$Res>
    implements $UnLikedVideoCopyWith<$Res> {
  _$UnLikedVideoCopyWithImpl(this._self, this._then);

  final UnLikedVideo _self;
  final $Res Function(UnLikedVideo) _then;

/// Create a copy of FastLaughEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(UnLikedVideo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$FastLaughState {

 List<Downloads> get videosList; bool get isLoading; bool get isError;
/// Create a copy of FastLaughState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FastLaughStateCopyWith<FastLaughState> get copyWith => _$FastLaughStateCopyWithImpl<FastLaughState>(this as FastLaughState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FastLaughState&&const DeepCollectionEquality().equals(other.videosList, videosList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(videosList),isLoading,isError);

@override
String toString() {
  return 'FastLaughState(videosList: $videosList, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class $FastLaughStateCopyWith<$Res>  {
  factory $FastLaughStateCopyWith(FastLaughState value, $Res Function(FastLaughState) _then) = _$FastLaughStateCopyWithImpl;
@useResult
$Res call({
 List<Downloads> videosList, bool isLoading, bool isError
});




}
/// @nodoc
class _$FastLaughStateCopyWithImpl<$Res>
    implements $FastLaughStateCopyWith<$Res> {
  _$FastLaughStateCopyWithImpl(this._self, this._then);

  final FastLaughState _self;
  final $Res Function(FastLaughState) _then;

/// Create a copy of FastLaughState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? videosList = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_self.copyWith(
videosList: null == videosList ? _self.videosList : videosList // ignore: cast_nullable_to_non_nullable
as List<Downloads>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FastLaughState].
extension FastLaughStatePatterns on FastLaughState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Downloads> videosList,  bool isLoading,  bool isError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that.videosList,_that.isLoading,_that.isError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Downloads> videosList,  bool isLoading,  bool isError)  $default,) {final _that = this;
switch (_that) {
case _Initial():
return $default(_that.videosList,_that.isLoading,_that.isError);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Downloads> videosList,  bool isLoading,  bool isError)?  $default,) {final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that.videosList,_that.isLoading,_that.isError);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements FastLaughState {
  const _Initial({required final  List<Downloads> videosList, required this.isLoading, required this.isError}): _videosList = videosList;
  

 final  List<Downloads> _videosList;
@override List<Downloads> get videosList {
  if (_videosList is EqualUnmodifiableListView) return _videosList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_videosList);
}

@override final  bool isLoading;
@override final  bool isError;

/// Create a copy of FastLaughState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&const DeepCollectionEquality().equals(other._videosList, _videosList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_videosList),isLoading,isError);

@override
String toString() {
  return 'FastLaughState(videosList: $videosList, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $FastLaughStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 List<Downloads> videosList, bool isLoading, bool isError
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of FastLaughState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? videosList = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_Initial(
videosList: null == videosList ? _self._videosList : videosList // ignore: cast_nullable_to_non_nullable
as List<Downloads>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
