import 'package:dio/dio.dart';
import 'package:flutter_base/app/data/local/preference_manager.dart';

class RequestHeaderInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    getCustomHeaders().then((customHeaders) {
      options.headers.addAll(customHeaders);
      super.onRequest(options, handler);
    });
  }

  Future<Map<String, String>> getCustomHeaders() async {
    var customHeaders = {'content-type': 'application/json'};

    String? token = await PreferenceManager.getToken();
    if (token != null) {
      customHeaders.addAll({
        'Authorization': "Bearer $token",
      });
    }

    return customHeaders;
  }
}
