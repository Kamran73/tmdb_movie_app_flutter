part of 'movie_screen_bloc.dart';

@freezed
class MovieScreenEvent with _$MovieScreenEvent {
  const factory MovieScreenEvent.getMovies() = _GetMovies;
}
