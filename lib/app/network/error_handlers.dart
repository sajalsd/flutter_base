import 'package:dio/dio.dart';

String handleDioError(DioError dioError) {
  String errorDescription = "";
  switch (dioError.type) {
    case DioErrorType.cancel:
      errorDescription = "Request to API server was cancelled";
      break;
    case DioErrorType.connectTimeout:
      errorDescription = "Connection timeout with API server";
      break;
    case DioErrorType.other:
      errorDescription =
          "Connection to API server failed due to internet connection";
      break;
    case DioErrorType.receiveTimeout:
      errorDescription = "Receive timeout in connection with API server";
      break;
    case DioErrorType.response:
      errorDescription = handleError(dioError);
      break;

    case DioErrorType.sendTimeout:
      errorDescription = "Send timeout in connection with API server";
      break;
  }

  // ignore: avoid_print
  print("error_handler: printable error - $errorDescription");

  return errorDescription;
}

String handleError(DioError dioError){
  //TODO HANDLE ERROR BASED ON REST API ERROR RESPONSE

  String? serverMessage;
  String? error;

  String? msg = "";
  // int statusCode = dioError.response?.statusCode ?? -1;

  error = dioError.response?.data["error"];
  serverMessage = dioError.response?.data["message"];

  msg = serverMessage ?? error;

  return msg ?? "";
}
