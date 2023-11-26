// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMovies,
    required TResult Function() getLikedMovies,
    required TResult Function(Movie movie) updateLikedMovies,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMovies,
    TResult? Function()? getLikedMovies,
    TResult? Function(Movie movie)? updateLikedMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMovies,
    TResult Function()? getLikedMovies,
    TResult Function(Movie movie)? updateLikedMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMovies value) getMovies,
    required TResult Function(_GetLikedMovies value) getLikedMovies,
    required TResult Function(_UpdateLikedMovies value) updateLikedMovies,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMovies value)? getMovies,
    TResult? Function(_GetLikedMovies value)? getLikedMovies,
    TResult? Function(_UpdateLikedMovies value)? updateLikedMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMovies value)? getMovies,
    TResult Function(_GetLikedMovies value)? getLikedMovies,
    TResult Function(_UpdateLikedMovies value)? updateLikedMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieScreenEventCopyWith<$Res> {
  factory $MovieScreenEventCopyWith(
          MovieScreenEvent value, $Res Function(MovieScreenEvent) then) =
      _$MovieScreenEventCopyWithImpl<$Res, MovieScreenEvent>;
}

/// @nodoc
class _$MovieScreenEventCopyWithImpl<$Res, $Val extends MovieScreenEvent>
    implements $MovieScreenEventCopyWith<$Res> {
  _$MovieScreenEventCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetMoviesImplCopyWith<$Res> {
  factory _$$GetMoviesImplCopyWith(
          _$GetMoviesImpl value, $Res Function(_$GetMoviesImpl) then) =
      __$$GetMoviesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMoviesImplCopyWithImpl<$Res>
    extends _$MovieScreenEventCopyWithImpl<$Res, _$GetMoviesImpl>
    implements _$$GetMoviesImplCopyWith<$Res> {
  __$$GetMoviesImplCopyWithImpl(
      _$GetMoviesImpl _value, $Res Function(_$GetMoviesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetMoviesImpl implements _GetMovies {
  const _$GetMoviesImpl();

  @override
  String toString() {
    return 'MovieScreenEvent.getMovies()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMoviesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMovies,
    required TResult Function() getLikedMovies,
    required TResult Function(Movie movie) updateLikedMovies,
  }) {
    return getMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMovies,
    TResult? Function()? getLikedMovies,
    TResult? Function(Movie movie)? updateLikedMovies,
  }) {
    return getMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMovies,
    TResult Function()? getLikedMovies,
    TResult Function(Movie movie)? updateLikedMovies,
    required TResult orElse(),
  }) {
    if (getMovies != null) {
      return getMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMovies value) getMovies,
    required TResult Function(_GetLikedMovies value) getLikedMovies,
    required TResult Function(_UpdateLikedMovies value) updateLikedMovies,
  }) {
    return getMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMovies value)? getMovies,
    TResult? Function(_GetLikedMovies value)? getLikedMovies,
    TResult? Function(_UpdateLikedMovies value)? updateLikedMovies,
  }) {
    return getMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMovies value)? getMovies,
    TResult Function(_GetLikedMovies value)? getLikedMovies,
    TResult Function(_UpdateLikedMovies value)? updateLikedMovies,
    required TResult orElse(),
  }) {
    if (getMovies != null) {
      return getMovies(this);
    }
    return orElse();
  }
}

abstract class _GetMovies implements MovieScreenEvent {
  const factory _GetMovies() = _$GetMoviesImpl;
}

/// @nodoc
abstract class _$$GetLikedMoviesImplCopyWith<$Res> {
  factory _$$GetLikedMoviesImplCopyWith(_$GetLikedMoviesImpl value,
          $Res Function(_$GetLikedMoviesImpl) then) =
      __$$GetLikedMoviesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetLikedMoviesImplCopyWithImpl<$Res>
    extends _$MovieScreenEventCopyWithImpl<$Res, _$GetLikedMoviesImpl>
    implements _$$GetLikedMoviesImplCopyWith<$Res> {
  __$$GetLikedMoviesImplCopyWithImpl(
      _$GetLikedMoviesImpl _value, $Res Function(_$GetLikedMoviesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetLikedMoviesImpl implements _GetLikedMovies {
  const _$GetLikedMoviesImpl();

  @override
  String toString() {
    return 'MovieScreenEvent.getLikedMovies()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetLikedMoviesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMovies,
    required TResult Function() getLikedMovies,
    required TResult Function(Movie movie) updateLikedMovies,
  }) {
    return getLikedMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMovies,
    TResult? Function()? getLikedMovies,
    TResult? Function(Movie movie)? updateLikedMovies,
  }) {
    return getLikedMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMovies,
    TResult Function()? getLikedMovies,
    TResult Function(Movie movie)? updateLikedMovies,
    required TResult orElse(),
  }) {
    if (getLikedMovies != null) {
      return getLikedMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMovies value) getMovies,
    required TResult Function(_GetLikedMovies value) getLikedMovies,
    required TResult Function(_UpdateLikedMovies value) updateLikedMovies,
  }) {
    return getLikedMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMovies value)? getMovies,
    TResult? Function(_GetLikedMovies value)? getLikedMovies,
    TResult? Function(_UpdateLikedMovies value)? updateLikedMovies,
  }) {
    return getLikedMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMovies value)? getMovies,
    TResult Function(_GetLikedMovies value)? getLikedMovies,
    TResult Function(_UpdateLikedMovies value)? updateLikedMovies,
    required TResult orElse(),
  }) {
    if (getLikedMovies != null) {
      return getLikedMovies(this);
    }
    return orElse();
  }
}

abstract class _GetLikedMovies implements MovieScreenEvent {
  const factory _GetLikedMovies() = _$GetLikedMoviesImpl;
}

/// @nodoc
abstract class _$$UpdateLikedMoviesImplCopyWith<$Res> {
  factory _$$UpdateLikedMoviesImplCopyWith(_$UpdateLikedMoviesImpl value,
          $Res Function(_$UpdateLikedMoviesImpl) then) =
      __$$UpdateLikedMoviesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Movie movie});

  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class __$$UpdateLikedMoviesImplCopyWithImpl<$Res>
    extends _$MovieScreenEventCopyWithImpl<$Res, _$UpdateLikedMoviesImpl>
    implements _$$UpdateLikedMoviesImplCopyWith<$Res> {
  __$$UpdateLikedMoviesImplCopyWithImpl(_$UpdateLikedMoviesImpl _value,
      $Res Function(_$UpdateLikedMoviesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
  }) {
    return _then(_$UpdateLikedMoviesImpl(
      null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieCopyWith<$Res> get movie {
    return $MovieCopyWith<$Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value));
    });
  }
}

/// @nodoc

class _$UpdateLikedMoviesImpl implements _UpdateLikedMovies {
  const _$UpdateLikedMoviesImpl(this.movie);

  @override
  final Movie movie;

  @override
  String toString() {
    return 'MovieScreenEvent.updateLikedMovies(movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLikedMoviesImpl &&
            (identical(other.movie, movie) || other.movie == movie));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLikedMoviesImplCopyWith<_$UpdateLikedMoviesImpl> get copyWith =>
      __$$UpdateLikedMoviesImplCopyWithImpl<_$UpdateLikedMoviesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMovies,
    required TResult Function() getLikedMovies,
    required TResult Function(Movie movie) updateLikedMovies,
  }) {
    return updateLikedMovies(movie);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMovies,
    TResult? Function()? getLikedMovies,
    TResult? Function(Movie movie)? updateLikedMovies,
  }) {
    return updateLikedMovies?.call(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMovies,
    TResult Function()? getLikedMovies,
    TResult Function(Movie movie)? updateLikedMovies,
    required TResult orElse(),
  }) {
    if (updateLikedMovies != null) {
      return updateLikedMovies(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMovies value) getMovies,
    required TResult Function(_GetLikedMovies value) getLikedMovies,
    required TResult Function(_UpdateLikedMovies value) updateLikedMovies,
  }) {
    return updateLikedMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMovies value)? getMovies,
    TResult? Function(_GetLikedMovies value)? getLikedMovies,
    TResult? Function(_UpdateLikedMovies value)? updateLikedMovies,
  }) {
    return updateLikedMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMovies value)? getMovies,
    TResult Function(_GetLikedMovies value)? getLikedMovies,
    TResult Function(_UpdateLikedMovies value)? updateLikedMovies,
    required TResult orElse(),
  }) {
    if (updateLikedMovies != null) {
      return updateLikedMovies(this);
    }
    return orElse();
  }
}

abstract class _UpdateLikedMovies implements MovieScreenEvent {
  const factory _UpdateLikedMovies(final Movie movie) = _$UpdateLikedMoviesImpl;

  Movie get movie;
  @JsonKey(ignore: true)
  _$$UpdateLikedMoviesImplCopyWith<_$UpdateLikedMoviesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieScreenState {
  ViewState<List<Movie>> get moviesListVS => throw _privateConstructorUsedError;
  List<Movie> get likedMovies => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ViewState<List<Movie>> moviesListVS, List<Movie> likedMovies)
        moviesState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ViewState<List<Movie>> moviesListVS, List<Movie> likedMovies)?
        moviesState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ViewState<List<Movie>> moviesListVS, List<Movie> likedMovies)?
        moviesState,
    required TResult orElse(),
  }) =>
throw _privateConstructorUsedError;
@optionalTypeArgs
TResult map<TResult extends Object?>({
required TResult Function(_MoviesState value) moviesState,
}) =>
throw _privateConstructorUsedError;
@optionalTypeArgs
TResult? mapOrNull<TResult extends Object?>({
TResult? Function(_MoviesState value)? moviesState,
}) =>
throw _privateConstructorUsedError;
@optionalTypeArgs
TResult maybeMap<TResult extends Object?>({
TResult Function(_MoviesState value)? moviesState,
required TResult orElse(),
}) =>
throw _privateConstructorUsedError;

@JsonKey(ignore: true)
$MovieScreenStateCopyWith<MovieScreenState> get copyWith =>
throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieScreenStateCopyWith<$Res> {
  factory $MovieScreenStateCopyWith(
          MovieScreenState value, $Res Function(MovieScreenState) then) =
      _$MovieScreenStateCopyWithImpl<$Res, MovieScreenState>;
  @useResult
  $Res call({ViewState<List<Movie>> moviesListVS, List<Movie> likedMovies});
}

/// @nodoc
class _$MovieScreenStateCopyWithImpl<$Res, $Val extends MovieScreenState>
    implements $MovieScreenStateCopyWith<$Res> {
_$MovieScreenStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moviesListVS = null,
    Object? likedMovies = null,
  }) {
    return _then(_value.copyWith(
      moviesListVS: null == moviesListVS
          ? _value.moviesListVS
          : moviesListVS // ignore: cast_nullable_to_non_nullable
              as ViewState<List<Movie>>,
      likedMovies: null == likedMovies
          ? _value.likedMovies
          : likedMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoviesStateImplCopyWith<$Res>
implements $MovieScreenStateCopyWith<$Res> {
  factory _$$MoviesStateImplCopyWith(
          _$MoviesStateImpl value, $Res Function(_$MoviesStateImpl) then) =
      __$$MoviesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ViewState<List<Movie>> moviesListVS, List<Movie> likedMovies});
}

/// @nodoc
class __$$MoviesStateImplCopyWithImpl<$Res>
    extends _$MovieScreenStateCopyWithImpl<$Res, _$MoviesStateImpl>
    implements _$$MoviesStateImplCopyWith<$Res> {
  __$$MoviesStateImplCopyWithImpl(
      _$MoviesStateImpl _value, $Res Function(_$MoviesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moviesListVS = null,
    Object? likedMovies = null,
  }) {
    return _then(_$MoviesStateImpl(
      moviesListVS: null == moviesListVS
          ? _value.moviesListVS
          : moviesListVS // ignore: cast_nullable_to_non_nullable
              as ViewState<List<Movie>>,
      likedMovies: null == likedMovies
          ? _value._likedMovies
          : likedMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$MoviesStateImpl implements _MoviesState {
  const _$MoviesStateImpl(
      {required this.moviesListVS, final List<Movie> likedMovies = const []})
      : _likedMovies = likedMovies;

  @override
  final ViewState<List<Movie>> moviesListVS;
  final List<Movie> _likedMovies;
  @override
  @JsonKey()
  List<Movie> get likedMovies {
    if (_likedMovies is EqualUnmodifiableListView) return _likedMovies;
// ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likedMovies);
  }

  @override
  String toString() {
    return 'MovieScreenState.moviesState(moviesListVS: $moviesListVS, likedMovies: $likedMovies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesStateImpl &&
            (identical(other.moviesListVS, moviesListVS) ||
                other.moviesListVS == moviesListVS) &&
            const DeepCollectionEquality()
                .equals(other._likedMovies, _likedMovies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, moviesListVS,
      const DeepCollectionEquality().hash(_likedMovies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesStateImplCopyWith<_$MoviesStateImpl> get copyWith =>
      __$$MoviesStateImplCopyWithImpl<_$MoviesStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ViewState<List<Movie>> moviesListVS, List<Movie> likedMovies)
        moviesState,
  }) {
    return moviesState(moviesListVS, likedMovies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ViewState<List<Movie>> moviesListVS, List<Movie> likedMovies)?
        moviesState,
  }) {
    return moviesState?.call(moviesListVS, likedMovies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ViewState<List<Movie>> moviesListVS, List<Movie> likedMovies)?
        moviesState,
    required TResult orElse(),
  }) {
    if (moviesState != null) {
      return moviesState(moviesListVS, likedMovies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoviesState value) moviesState,
  }) {
    return moviesState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MoviesState value)? moviesState,
  }) {
    return moviesState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoviesState value)? moviesState,
    required TResult orElse(),
  }) {
    if (moviesState != null) {
      return moviesState(this);
    }
    return orElse();
  }
}

abstract class _MoviesState implements MovieScreenState {
  const factory _MoviesState(
      {required final ViewState<List<Movie>> moviesListVS,
      final List<Movie> likedMovies}) = _$MoviesStateImpl;

  @override
  ViewState<List<Movie>> get moviesListVS;
  @override
  List<Movie> get likedMovies;
  @override
  @JsonKey(ignore: true)
  _$$MoviesStateImplCopyWith<_$MoviesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
