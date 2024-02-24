import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}
// other classes that I can implement in more apps => AuthFailure - DatabaseFailure - ValidationFailure

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connection timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure('send timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive timeout');
      case DioExceptionType.badCertificate:
        return ServerFailure('This website is not secure');
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('call cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure('check your internet connection');
      case DioExceptionType.unknown:
        return ServerFailure(
            'ops, there was an error!\ntry again later, please');
      default:
        return ServerFailure(
            'ops, there was an error!\ntry again, please');
    }
  }

  factory ServerFailure.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Not Found');
    } else if (statusCode == 500) {
      return ServerFailure('Server Error, try again later');
    }
    return ServerFailure('ops, try again later');
  }
}
