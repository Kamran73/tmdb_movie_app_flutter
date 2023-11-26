import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movies_app/base/failure.dart';
import 'package:movies_app/dataProvider/model/main_response_model.dart';
import 'package:movies_app/dataProvider/model/movie_model.dart';
import 'package:movies_app/dataProvider/network/network_api_client.dart';
import 'package:movies_app/helper/extensions/dio_extension.dart';
import 'package:movies_app/repository/tmdb_repository.dart';

import '../helper/constant/strings_resource.dart';

class TMDBRepositoryImpl implements TMDBRepository {
  NetworkApiClient networkApiClient;

  TMDBRepositoryImpl({required this.networkApiClient});

  @override
  Future<Either<Failure, List<Movie>>> getMovies() async {
    try {
      return await networkApiClient
          .getMovies()
          .then((mainResponse) => right(mainResponse.movies ?? []));
    } on DioException catch (dioException) {
      return left(_handleException(dioException));
    }
  }

  Failure _handleException(DioException e) {
    final dioErrorResponse = e.response;
    if (e.isInternetConnectionError) {
      return const Failure(
          errorMessage: StringsResource.NO_INTERNET_ERROR_STR,
          errorCode: StringsResource.INTERNET_STR);
    } else if (dioErrorResponse?.data != null) {
      final mainResponse = MainResponseModel.fromJson(dioErrorResponse?.data);
      return Failure(
        errorMessage: mainResponse.statusMessage ??
            dioErrorResponse?.statusMessage ??
            StringsResource.SOMETHING_WRONG_STR,
        errorCode: dioErrorResponse?.statusCode.toString() ??
            StringsResource.ERROR_STR,
      );
    } else {
      return Failure(
        errorMessage: dioErrorResponse?.statusMessage ??
            StringsResource.SOMETHING_WRONG_STR,
        errorCode: dioErrorResponse?.statusCode.toString() ??
            StringsResource.ERROR_STR,
      );
    }
  }
}
