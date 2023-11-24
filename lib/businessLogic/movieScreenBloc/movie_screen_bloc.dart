import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/base/view_state.dart';

import '../../dataProvider/model/movie_model.dart';
import '../../repository/tmdb_repository.dart';

part 'movie_screen_bloc.freezed.dart';

part 'movie_screen_event.dart';

part 'movie_screen_state.dart';

class MovieScreenBloc extends Bloc<MovieScreenEvent, MovieScreenState> {
  TMDBRepository tmdbRepository;

  MovieScreenBloc({required this.tmdbRepository})
      : super(MovieScreenState.moviesState(moviesListVS: ViewState.initial())) {
    on<MovieScreenEvent>((event, emit) async {
      await event.map(
        getMovies: (_) async => await _onGetMovies(emit),
      );
    });
  }

  Future<void> _onGetMovies(Emitter emit) async {
    emit(state.copyWith(moviesListVS: ViewState.loading()));
    await tmdbRepository.getMovies().then((response) {
      response.fold(
          (failure) => emit(
              state.copyWith(moviesListVS: ViewState.error(failure: failure))),
          (success) => emit(state.copyWith(
              moviesListVS: ViewState.completed(data: success))));
    });
  }
}
