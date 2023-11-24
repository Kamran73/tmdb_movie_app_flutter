import 'package:dio/dio.dart';
import 'package:movies_app/businessLogic/movieScreenBloc/movie_screen_bloc.dart';
import 'package:movies_app/dataProvider/network/network_interceptor.dart';
import 'package:movies_app/helper/constant/constants_resource.dart';
import 'package:movies_app/repository/tmdb_repository.dart';
import 'package:movies_app/repository/tmdb_repository_impl.dart';

import '../../dataProvider/network/network_api_client.dart';
import '../../main.dart';

class DependencyUtils {
  DependencyUtils._();

  static Future<void> registerAppDependencies() async {
    /// initializing third party packages instance
    final dio = Dio(
      BaseOptions(
          contentType: "application/json",
          headers: {
            "api-key": ConstantsResource.CLIENT_API_KEY,
            "Accept": "application/json"
          },
          baseUrl: ConstantsResource.MOVIES_DATA_BASE_URL),
    )..interceptors.add(NetworkInterceptor());

    /// registering third party instances
    getIt.registerLazySingleton<Dio>(() => dio);

    /// registering api clients
    getIt.registerSingleton(NetworkApiClient(getIt()));

    /// registering remote data manager
    getIt.registerSingleton<TMDBRepository>(
        TMDBRepositoryImpl(networkApiClient: getIt()));

    /// registering bloc
    getIt.registerFactory(() => MovieScreenBloc(tmdbRepository: getIt()));
  }
}
