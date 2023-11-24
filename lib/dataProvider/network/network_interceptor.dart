import 'package:dio/dio.dart';
import 'package:movies_app/helper/constant/constants_resource.dart';

import '../../helper/utils/utils.dart';

class NetworkInterceptor extends Interceptor {
  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    Utils.console("on request");

    options.headers["Authorization"] =
        'Bearer ${ConstantsResource.AUTH_BEARER_TOKEN}';

    Utils.console("request body ${options.data.toString()}");
    Utils.console("request headers ${options.headers.toString()}");
    Utils.console("request base url ${options.baseUrl.toString()}");
    Utils.console("request endpoint ${options.path.toString()}");
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);

    Utils.console("Got real api response ${response.data}");
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);

    Utils.console("Got error ${err.error}");
  }
}
