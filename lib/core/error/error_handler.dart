import 'package:dio/dio.dart';

class errorhandler {
  String dioerror(DioException error) {
    if (error.response != null) {
      final staruscode = error.response!.statusCode;
      final data = error.response!.data;
      switch (staruscode) {
        case 400:
          return data['message'] ?? '(400)';
        case 401:
          return 'unauthenticated request ';
        case 404:
          return 'unavaible element';
        case 500:
          return 'server error';
        default:
          return data['massege'] + ' with statuscode  $staruscode';
      }
    }
    switch (error.type) {
      case DioExceptionType.badResponse:
        return 'bad response send , please try again!';
      case DioExceptionType.connectionError:
        return 'cant connect the server , please try again!';
      case DioExceptionType.connectionTimeout:
        return 'connect timeout , please try again !';
      case DioExceptionType.badCertificate:
        return 'bad certificate';
      case DioExceptionType.receiveTimeout:
        return 'recive timeout , please try again';
      case DioExceptionType.sendTimeout:
        return 'send timeout , please try again!';
      default:
        return 'occurred error';
    }
  }
}
