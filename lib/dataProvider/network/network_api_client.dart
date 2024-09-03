import 'package:dio/dio.dart';
import 'package:movies_app/dataProvider/model/main_response_model.dart';
import 'package:retrofit/http.dart';

part 'network_api_client.g.dart';

@RestApi()
abstract class NetworkApiClient {
  factory NetworkApiClient(Dio dio, {String baseUrl}) = _NetworkApiClient;

  @GET("3/trending/movie/day?language=en-US")
  Future<MainResponseModel> getMovies();
}
