import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;

  Failures(this.errMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection time out with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send time out with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recieve time out with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('BadCertificate time out with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was Cancled');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error with ApiServer');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('Server Connection failed');
        }
        return ServerFailure('unknown error with ApiServer');
      default:
        return ServerFailure('Oops there was an error try again');
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not fount , please try again');
    } else if (statusCode == 500) {
      return ServerFailure(
          'There was an internal server error , please try again');
    } else {
      return ServerFailure('Oops there was an error try again');
    }
  }
}
