import 'package:dio/dio.dart';

abstract class Failure {
  final String errmessage;

  const Failure({required this.errmessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errmessage});
  factory ServerFailure.formDioError({required DioException dioerror}) {
    switch (dioerror.type) {
      case DioExceptionType.sendTimeout:
        return ServerFailure(errmessage: " Send Timeout with Api Service ");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errmessage: " Receive Timeout with Api Service ");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            responseCode: dioerror.response!.statusCode!,
            response: dioerror.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(
            errmessage: "Request was Canceled with ApiService ");
      case DioExceptionType.unknown:
        if (dioerror.message!.contains("SocketException")) {
          return ServerFailure(errmessage: "No internet connection");
        } else {
          return ServerFailure(
              errmessage: "Unexpected error, Please try again");
        }
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errmessage: "Connection timeout with Api service");
      default:
        return ServerFailure(
            errmessage: "Opps there was an error, Please try again");
    }
  }

  factory ServerFailure.fromResponse(
      {required int responseCode, dynamic response}) {
    if (responseCode == 400 || responseCode == 401 || responseCode == 403) {
      return ServerFailure(errmessage: response["error"]["message"]);
    } else if (responseCode == 404) {
      return ServerFailure(
          errmessage: "Your request not found, Please try again");
    } else if (responseCode == 500) {
      return ServerFailure(
          errmessage: "Internal server error, Please try later");
    } else {
      return ServerFailure(
          errmessage: "Opps there was an error, please try later");
    }
  }
}
