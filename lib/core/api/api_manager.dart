import 'package:dio/dio.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiManager {
  late Dio dio;

  ApiManager() {
    dio = Dio();
  }

  Future<Response> getData(
      {required String endPoint,
      Map<String, dynamic>? params,
      Map<String, dynamic>? header}) {
    return dio.get(Constants.BASE_URL + endPoint,
        queryParameters: params, options: Options(headers: header));
  }

  Future<Response> postData(
      {required String endPoint,
      Map<String, dynamic>? body,
      Map<String, dynamic>? header}) {
    return dio.post(Constants.BASE_URL + endPoint,
        data: body, options: Options(headers: header));
  }

  Future<Response> putData(
      {required String endPoint,
        Map<String, dynamic>? body,
        Map<String, dynamic>? header}) {
    return dio.put(Constants.BASE_URL + endPoint,
        data: body, options: Options(headers: header));
  }

  Future<Response> deleteData(
      {required String endPoint,
        Map<String, dynamic>? body,
        Map<String, dynamic>? header}) {
    return dio.delete(Constants.BASE_URL + endPoint,
        data: body, options: Options(headers: header));
  }
}
