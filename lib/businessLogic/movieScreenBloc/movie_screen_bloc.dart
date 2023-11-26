import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/base/view_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../dataProvider/model/movie_model.dart';
import '../../helper/constant/common_keys.dart';
import '../../main.dart';
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
        getLikedMovies: (_) async => await _onGetLikedMovies(emit),
        updateLikedMovies: (value) async =>
            await _onUpdateLikedMovies(emit, value),
      );
    });
  }

  Future<void> _onGetMovies(Emitter emit) async {
    emit(state.copyWith(moviesListVS: ViewState.loading()));
    await tmdbRepository.getMovies().then((response) {
      response.fold(
              (failure) =>
              emit(
                  state.copyWith(
                      moviesListVS: ViewState.error(failure: failure))),
              (success) =>
              emit(state.copyWith(
                  moviesListVS: ViewState.completed(data: success))));
    });
  }

  Future<void> _onGetLikedMovies(Emitter emit) async {
    emit(state.copyWith(likedMovies: _getCachedMovies()));
  }

  List<Movie> _getCachedMovies() {
    List<Movie> moviesList = [];
    final moviesJson =
    getIt<SharedPreferences>().getString(CommonKeys.FAV_MOVIES_CACHE_KEY);
    if (moviesJson != null) {
      for (var element in jsonDecode(moviesJson)) {
        moviesList.add(Movie.fromJson(element));
      }
    }
    return moviesList;
  }

  Future<void> _onUpdateLikedMovies(Emitter emit,
      _UpdateLikedMovies movie) async {
    List<Movie> movieList = [...state.likedMovies];
    if (movieList.contains(movie.movie)) {
      movieList.removeWhere((element) => element.id == movie.movie.id);
    } else {
      movieList.add(movie.movie);
    }
    emit(state.copyWith(likedMovies: movieList));
    List<Map<String, dynamic>> mapList = [];
    for (var element in movieList) {
      mapList.add(element.toJson());
    }
    await getIt<SharedPreferences>()
        .setString(CommonKeys.FAV_MOVIES_CACHE_KEY, jsonEncode(mapList));
  }
}
