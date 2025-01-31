import 'package:dio/dio.dart';

abstract class Failures{
  final String errMessage;
  const Failures(this.errMessage);
}

class ServerFailure extends Failures{
  ServerFailure(super.errMessage);
  
  factory ServerFailure.fromDioError(DioException dioError){
    switch(dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with API server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with API server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with API server');
      case DioExceptionType.badCertificate:
        return ServerFailure("SSL Certificate Error: The certificate is invalid or not trusted.");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioError.response!.statusCode, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to API server was cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure('No internet connection');
      case DioExceptionType.unknown:
        return ServerFailure('Unexpected error, please try again later');
        default:
          return ServerFailure('Ops there was an error, please try again');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response){
    if (statusCode == 400 || statusCode == 401 || statusCode == 403){
      return ServerFailure(response['error']['message']);
    }else if (statusCode == 404){
      return ServerFailure('Your request not found, please try later');
    } else if(statusCode == 500) {
      return ServerFailure('Internal server error, please try later');
    } else {
      return ServerFailure('Ops there was an error, please try again');
    }
  }
}