import 'package:dio/dio.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: '',
    connectTimeout: Duration(seconds: 20),
    receiveTimeout: Duration(minutes: 1),
    sendTimeout: Duration(seconds: 50),
    headers: {'Accept': 'application/json'},
  ),
);
void setToken(String? token) {
  dio.options.headers['Authorization'] = token != null ? "Bearer $token" : null;
}

Future<Response> getapi({
  required String url,
  Map<String, dynamic>? body,
}) async {
  return await dio.get(url, queryParameters: body);
}

Future<Response> postapi({
  required String url,
  required Map<String, dynamic> body,
}) {
  return dio.post(url, queryParameters: body);
}
