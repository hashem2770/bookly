import 'package:dio/dio.dart';

// Api Service Wrapper
// Wrapper: an upper class,function..etc in order to provide more functionality and/or protection/encapsulate
class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;

  ApiService({required Dio dio}) : _dio = dio;

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
