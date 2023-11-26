import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/helper/constant/constants_resource.dart';

import '../../dataProvider/model/movie_model.dart';
import 'custom_cached_image.dart';

class MovieCardWidget extends StatelessWidget {
  final Movie movie;
  final VoidCallback onHeartIconPressed;
  final bool isFavorite;
  final BoxConstraints constraints;

  const MovieCardWidget(
      {super.key,
      required this.movie,
      required this.constraints,
      required this.isFavorite,
      required this.onHeartIconPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
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
                profileUrl: ConstantsResource.MOVIES_IMAGES_BASE_URL +
                    (movie.posterPath ?? movie.backdropPath ?? ""),
                width: double.maxFinite,
                height: double.maxFinite,
                radius: 14,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(14),
                bottomLeft: Radius.circular(14),
              ),
            ),
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: constraints.maxWidth - 56,
                      child: Text(
                        movie.title ?? "",
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
                        movie.overview ?? "",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: onHeartIconPressed,
                  child: Icon(
                    isFavorite
                        ? CupertinoIcons.heart_fill
                        : CupertinoIcons.heart,
                    color: isFavorite ? Colors.red : null,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
