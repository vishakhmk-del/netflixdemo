// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent()';
}


}

/// @nodoc
class $SearchEventCopyWith<$Res>  {
$SearchEventCopyWith(SearchEvent _, $Res Function(SearchEvent) __);
}


/// Adds pattern-matching-related methods to [SearchEvent].
extension SearchEventPatterns on SearchEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initialize value)?  initialize,TResult Function( SearchMovies value)?  searchMovies,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initialize() when initialize != null:
return initialize(_that);case SearchMovies() when searchMovies != null:
return searchMovies(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initialize value)  initialize,required TResult Function( SearchMovies value)  searchMovies,}){
final _that = this;
switch (_that) {
case Initialize():
return initialize(_that);case SearchMovies():
return searchMovies(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initialize value)?  initialize,TResult? Function( SearchMovies value)?  searchMovies,}){
final _that = this;
switch (_that) {
case Initialize() when initialize != null:
return initialize(_that);case SearchMovies() when searchMovies != null:
return searchMovies(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initialize,TResult Function( String movieQuery)?  searchMovies,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initialize() when initialize != null:
return initialize();case SearchMovies() when searchMovies != null:
return searchMovies(_that.movieQuery);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initialize,required TResult Function( String movieQuery)  searchMovies,}) {final _that = this;
switch (_that) {
case Initialize():
return initialize();case SearchMovies():
return searchMovies(_that.movieQuery);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initialize,TResult? Function( String movieQuery)?  searchMovies,}) {final _that = this;
switch (_that) {
case Initialize() when initialize != null:
return initialize();case SearchMovies() when searchMovies != null:
return searchMovies(_that.movieQuery);case _:
  return null;

}
}

}

/// @nodoc


class Initialize implements SearchEvent {
  const Initialize();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initialize);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent.initialize()';
}


}




/// @nodoc


class SearchMovies implements SearchEvent {
  const SearchMovies({required this.movieQuery});
  

 final  String movieQuery;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchMoviesCopyWith<SearchMovies> get copyWith => _$SearchMoviesCopyWithImpl<SearchMovies>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchMovies&&(identical(other.movieQuery, movieQuery) || other.movieQuery == movieQuery));
}


@override
int get hashCode => Object.hash(runtimeType,movieQuery);

@override
String toString() {
  return 'SearchEvent.searchMovies(movieQuery: $movieQuery)';
}


}

/// @nodoc
abstract mixin class $SearchMoviesCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $SearchMoviesCopyWith(SearchMovies value, $Res Function(SearchMovies) _then) = _$SearchMoviesCopyWithImpl;
@useResult
$Res call({
 String movieQuery
});




}
/// @nodoc
class _$SearchMoviesCopyWithImpl<$Res>
    implements $SearchMoviesCopyWith<$Res> {
  _$SearchMoviesCopyWithImpl(this._self, this._then);

  final SearchMovies _self;
  final $Res Function(SearchMovies) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movieQuery = null,}) {
  return _then(SearchMovies(
movieQuery: null == movieQuery ? _self.movieQuery : movieQuery // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SearchState {

 List<SearchResultData> get searchResultList; List<Downloads> get idleList; bool get isLoading; bool get isError;
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchStateCopyWith<SearchState> get copyWith => _$SearchStateCopyWithImpl<SearchState>(this as SearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState&&const DeepCollectionEquality().equals(other.searchResultList, searchResultList)&&const DeepCollectionEquality().equals(other.idleList, idleList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(searchResultList),const DeepCollectionEquality().hash(idleList),isLoading,isError);

@override
String toString() {
  return 'SearchState(searchResultList: $searchResultList, idleList: $idleList, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class $SearchStateCopyWith<$Res>  {
  factory $SearchStateCopyWith(SearchState value, $Res Function(SearchState) _then) = _$SearchStateCopyWithImpl;
@useResult
$Res call({
 List<SearchResultData> searchResultList, List<Downloads> idleList, bool isLoading, bool isError
});




}
/// @nodoc
class _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._self, this._then);

  final SearchState _self;
  final $Res Function(SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchResultList = null,Object? idleList = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_self.copyWith(
searchResultList: null == searchResultList ? _self.searchResultList : searchResultList // ignore: cast_nullable_to_non_nullable
as List<SearchResultData>,idleList: null == idleList ? _self.idleList : idleList // ignore: cast_nullable_to_non_nullable
as List<Downloads>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns on SearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchState value)  $default,){
final _that = this;
switch (_that) {
case _SearchState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SearchResultData> searchResultList,  List<Downloads> idleList,  bool isLoading,  bool isError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.searchResultList,_that.idleList,_that.isLoading,_that.isError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SearchResultData> searchResultList,  List<Downloads> idleList,  bool isLoading,  bool isError)  $default,) {final _that = this;
switch (_that) {
case _SearchState():
return $default(_that.searchResultList,_that.idleList,_that.isLoading,_that.isError);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SearchResultData> searchResultList,  List<Downloads> idleList,  bool isLoading,  bool isError)?  $default,) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.searchResultList,_that.idleList,_that.isLoading,_that.isError);case _:
  return null;

}
}

}

/// @nodoc


class _SearchState implements SearchState {
  const _SearchState({required final  List<SearchResultData> searchResultList, required final  List<Downloads> idleList, required this.isLoading, required this.isError}): _searchResultList = searchResultList,_idleList = idleList;
  

 final  List<SearchResultData> _searchResultList;
@override List<SearchResultData> get searchResultList {
  if (_searchResultList is EqualUnmodifiableListView) return _searchResultList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchResultList);
}

 final  List<Downloads> _idleList;
@override List<Downloads> get idleList {
  if (_idleList is EqualUnmodifiableListView) return _idleList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_idleList);
}

@override final  bool isLoading;
@override final  bool isError;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchStateCopyWith<_SearchState> get copyWith => __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchState&&const DeepCollectionEquality().equals(other._searchResultList, _searchResultList)&&const DeepCollectionEquality().equals(other._idleList, _idleList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_searchResultList),const DeepCollectionEquality().hash(_idleList),isLoading,isError);

@override
String toString() {
  return 'SearchState(searchResultList: $searchResultList, idleList: $idleList, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class _$SearchStateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(_SearchState value, $Res Function(_SearchState) _then) = __$SearchStateCopyWithImpl;
@override @useResult
$Res call({
 List<SearchResultData> searchResultList, List<Downloads> idleList, bool isLoading, bool isError
});




}
/// @nodoc
class __$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(this._self, this._then);

  final _SearchState _self;
  final $Res Function(_SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchResultList = null,Object? idleList = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_SearchState(
searchResultList: null == searchResultList ? _self._searchResultList : searchResultList // ignore: cast_nullable_to_non_nullable
as List<SearchResultData>,idleList: null == idleList ? _self._idleList : idleList // ignore: cast_nullable_to_non_nullable
as List<Downloads>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
