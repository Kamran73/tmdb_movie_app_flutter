import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../businessLogic/movieScreenBloc/movie_screen_bloc.dart';
import '../widgets/movie_card_widget.dart';

class FavoriteMovieScreen extends StatefulWidget {
  const FavoriteMovieScreen({super.key});

  @override
  State<FavoriteMovieScreen> createState() => _FavoriteMovieScreenState();
}

class _FavoriteMovieScreenState extends State<FavoriteMovieScreen> {
  @override
  void initState() {
    context
        .read<MovieScreenBloc>()
        .add(const MovieScreenEvent.getLikedMovies());
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BackButton(
                  color: Colors.white,
                ),
                Text(
                  "Favorite Movies!",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
        elevation: 0,
        shadowColor: Colors.transparent,
        leadingWidth: double.maxFinite,
      ),
      body: BlocBuilder<MovieScreenBloc, MovieScreenState>(
        builder: (context, state) {
          return OrientationBuilder(
            builder: (context, orientation) => GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: orientation == Orientation.landscape ? 3 : 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                mainAxisExtent: 187,
              ),
              itemBuilder: (BuildContext context, int index) {
                return LayoutBuilder(builder: (context, constraints) {
                  return MovieCardWidget(
                      movie: state.likedMovies[index],
                      constraints: constraints,
                      isFavorite: true,
                      onHeartIconPressed: () => context
                          .read<MovieScreenBloc>()
                          .add(MovieScreenEvent.updateLikedMovies(
                              state.likedMovies[index])));
                });
              },
              physics: const BouncingScrollPhysics(),
              itemCount: state.likedMovies.length,
            ),
          );
        },
      ),
    );
  }
}
