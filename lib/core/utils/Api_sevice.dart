import 'package:dio/dio.dart';

class Api_Service {
  final Url = "https://www.googleapis.com/books/v1/";
  final Dio dio;
  Api_Service(
    this.dio,
  );

  Future<Map<String, dynamic>> get({required String EndUrl}) async {
    var response = await dio.get("$Url$EndUrl",);
    return response.data;
  }
}
