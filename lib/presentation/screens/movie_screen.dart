import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/helper/utils/dialog_utils.dart';
import 'package:movies_app/presentation/screens/favorite_movie_screen.dart';
import 'package:movies_app/presentation/widgets/loading_state_widget.dart';

import '../../businessLogic/movieScreenBloc/movie_screen_bloc.dart';
import '../../dataProvider/model/movie_model.dart';
import '../../helper/enums/status_enum.dart';
import '../../main.dart';
import '../widgets/error_state_widget.dart';
import '../widgets/movie_card_widget.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({super.key});

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  void initState() {
    _getMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 18),
            child: Text(
              "Trending Movies!",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        elevation: 0,
        shadowColor: Colors.transparent,
        leadingWidth: double.maxFinite,
        actions: [
          IconButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FavoriteMovieScreen(),
                  )),
              icon: const Icon(
                CupertinoIcons.heart_fill,
                color: Colors.red,
              ))
        ],
      ),
      body: BlocConsumer<MovieScreenBloc, MovieScreenState>(
        listener: (context, state) {
          switch (state.moviesListVS.status) {
            case (Status.error):
              DialogUtils.errorDialog(
                  context: context,
                  failure: state.moviesListVS.failure ?? getIt());
            case (Status.completed):
            default:
              break;
          }
        },
        builder: (context, state) {
          return state.moviesListVS.status == Status.loading
              ? const LoadingStateWidget()
              : state.moviesListVS.status == Status.error
                  ? ErrorStateWidget(
                      onPressed: _getMovies,
                    )
                  : OrientationBuilder(
                      builder: (context, orientation) => GridView.builder(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 20),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:
                              orientation == Orientation.landscape ? 3 : 2,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 15,
                          mainAxisExtent: 187,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return LayoutBuilder(builder: (context, constraints) {
                            return MovieCardWidget(
                                movie: state.moviesListVS.data?[index] ??
                                    const Movie(),
                                constraints: constraints,
                                isFavorite: state.likedMovies
                                    .contains(state.moviesListVS.data?[index]),
                                onHeartIconPressed: () => context
                                    .read<MovieScreenBloc>()
                                    .add(MovieScreenEvent.updateLikedMovies(
                                        state.moviesListVS.data?[index] ??
                                            const Movie())));
                          });
                        },
                        physics: const BouncingScrollPhysics(),
                        itemCount: state.moviesListVS.data?.length,
                      ),
                    );
        },
      ),
    );
  }

  void _getMovies() {
    context.read<MovieScreenBloc>().add(const MovieScreenEvent.getMovies());
    context
        .read<MovieScreenBloc>()
        .add(const MovieScreenEvent.getLikedMovies());
  }
}
