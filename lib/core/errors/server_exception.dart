import 'package:WinWin/core/errors/failure.dart';
import 'package:dio/dio.dart';

class ServerException implements Exception {
  final Failure errorModel;
  ServerException({required this.errorModel});
}

//! need to check api response status code before use
void ThrowException(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      throw ServerException(errorModel: Failure.fromJson(e.response!.data));
    case DioExceptionType.sendTimeout:
      throw ServerException(errorModel: Failure.fromJson(e.response!.data));
    case DioExceptionType.receiveTimeout:
      throw ServerException(errorModel: Failure.fromJson(e.response!.data));
    case DioExceptionType.badCertificate:
      throw ServerException(errorModel: Failure.fromJson(e.response!.data));
    case DioExceptionType.cancel:
      throw ServerException(errorModel: Failure.fromJson(e.response!.data));
    case DioExceptionType.connectionError:
      throw ServerException(errorModel: Failure.fromJson(e.response!.data));
    case DioExceptionType.unknown:
      throw ServerException(errorModel: Failure.fromJson(e.response!.data));
    case DioExceptionType.badResponse:
      //! need to check api response status code before use
      switch (e.response!.statusCode) {
        case 400: //Bad Request
          throw ServerException(errorModel: Failure.fromJson(e.response!.data));
        case 401: // Unauthorized
          throw ServerException(errorModel: Failure.fromJson(e.response!.data));
        case 403: // Forbidden
          throw ServerException(errorModel: Failure.fromJson(e.response!.data));
        case 404: // Not Found
          throw ServerException(errorModel: Failure.fromJson(e.response!.data));
        case 405: // Method Not Allowed
          throw ServerException(errorModel: Failure.fromJson(e.response!.data));
        case 413: // the request contains bad syntax or cannot be fulfilled
          throw ServerException(errorModel: Failure.fromJson(e.response!.data));
        case 429: // Too Many Requests
          throw ServerException(errorModel: Failure.fromJson(e.response!.data));
        case 500: // Internal Server Error
          throw ServerException(errorModel: Failure.fromJson(e.response!.data));
        case 503: // Service Unavailable
          throw ServerException(errorModel: Failure.fromJson(e.response!.data));
        case 504: // Gateway Timeout
          throw ServerException(errorModel: Failure.fromJson(e.response!.data));
      }
  }
}
