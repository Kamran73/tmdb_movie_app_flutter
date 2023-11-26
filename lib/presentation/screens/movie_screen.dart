import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/helper/constant/constants_resource.dart';
import 'package:movies_app/helper/utils/dialog_utils.dart';
import 'package:movies_app/presentation/widgets/custom_cached_image.dart';

import '../../businessLogic/movieScreenBloc/movie_screen_bloc.dart';
import '../../helper/enums/status_enum.dart';
import '../../main.dart';

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
              onPressed: () {},
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
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : state.moviesListVS.status == Status.error
                  ? Center(
                      child: IconButton(
                          onPressed: _getMovies,
                          icon: const Icon(
                            CupertinoIcons.refresh,
                            color: Colors.red,
                          )),
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
                            return Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14)),
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(14),
                                              topLeft: Radius.circular(14))),
                                      alignment: Alignment.topCenter,
                                      child: CustomCachedImage(
                                        profileUrl: ConstantsResource
                                                .MOVIES_IMAGES_BASE_URL +
                                            (state.moviesListVS.data?[index]
                                                    .posterPath ??
                                                ""),
                                        width: double.maxFinite,
                                        height: double.maxFinite,
                                        radius: 14,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 14, horizontal: 16),
                                    decoration: const BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(14),
                                        bottomLeft: Radius.circular(14),
                                      ),
                                    ),
                                    alignment: Alignment.topCenter,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: constraints.maxWidth - 56,
                                              child: Text(
                                                state.moviesListVS.data?[index]
                                                        .title ??
                                                    "",
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                            SizedBox(
                                              width: constraints.maxWidth - 56,
                                              child: Text(
                                                state.moviesListVS.data?[index]
                                                        .overview ??
                                                    "",
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        InkWell(
                                          onTap: () {
                                            context.read<MovieScreenBloc>().add(
                                                MovieScreenEvent
                                                    .updateLikedMovies(state
                                                        .moviesListVS
                                                        .data![index]));
                                          },
                                          child: Icon(
                                            state.likedMovies.contains(state
                                                    .moviesListVS.data?[index])
                                                ? CupertinoIcons.heart_fill
                                                : CupertinoIcons.heart,
                                            color: state.likedMovies.contains(
                                                    state.moviesListVS
                                                        .data?[index])
                                                ? Colors.red
                                                : null,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
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
