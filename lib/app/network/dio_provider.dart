
import 'package:dio/dio.dart';
import 'package:flutter_base/app/network/pretty_dio_logger.dart';
import 'package:flutter_base/app/network/request_headers.dart';

class DioProvider {
  static const String baseUrl = "";

  static Dio? _instance;

  static final BaseOptions _options = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: 60 * 1000,
    receiveTimeout: 60 * 1000,
    // contentType: getContentType(),
  );

  static Dio get httpDio {
    int maxLineWidth = 90;
    if (_instance == null) {
      _instance = Dio(_options);

      _instance!.interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: maxLineWidth));

      _instance!.interceptors.add(RequestHeaderInterceptor());

      return _instance!;
    } else {
      return _instance!;
    }
  }

  static String _buildContentType(String version) {
    return "user_defined_content_type+$version";
  }

  DioProvider.setContentType(String version) {
    _instance?.options.contentType = _buildContentType(version);
  }

  DioProvider.setContentTypeApplicationJson() {
    _instance?.options.contentType = "application/json";
  }

}
