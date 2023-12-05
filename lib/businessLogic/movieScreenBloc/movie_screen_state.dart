part of 'movie_screen_bloc.dart';

@freezed
class MovieScreenState with _$MovieScreenState {
  const factory MovieScreenState.moviesState({
    required final ViewState<List<Movie>> moviesListVS,
    @Default([]) List<Movie> likedMovies,
  }) = _MoviesState;
}
