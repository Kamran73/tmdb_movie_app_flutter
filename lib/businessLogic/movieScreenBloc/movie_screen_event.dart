part of 'movie_screen_bloc.dart';

@freezed
class MovieScreenEvent with _$MovieScreenEvent {
  const factory MovieScreenEvent.getMovies() = _GetMovies;

  const factory MovieScreenEvent.getLikedMovies() = _GetLikedMovies;

  const factory MovieScreenEvent.updateLikedMovies(Movie movie) =
      _UpdateLikedMovies;
}
