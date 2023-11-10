import 'package:chpms_v2_1/api_connection/api_config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiService extends GetxService {
  final storage = GetStorage();

  late Dio _dio = Dio();

  var accessToken = ''.obs;

  dio({bool hasToken = true}) {
    var options = (hasToken)
        ? BaseOptions(
            connectTimeout: const Duration(seconds: 6),
            receiveTimeout: const Duration(seconds: 6),
            baseUrl: AppConfig.baseUrl,
            responseType: ResponseType.plain,
            contentType: 'application/json',
            headers: {
                'Content-type': 'application/json',
                'Accept': 'application/json',
                'Authorization': 'Bearer ${accessToken.value}'
              })
        : BaseOptions(
            baseUrl: AppConfig.webUrl,
            responseType: ResponseType.plain,
          );
    _dio = Dio(options);

    _dio.interceptors.add(PrettyDioLogger(
      logPrint: appDebugPrint,
      requestHeader: false,
      requestBody: true,
      responseBody: false,
      responseHeader: false,
    ));
    return _dio;
  }

  appDebugPrint(Object message) {
    debugPrint(message.toString());
  }

  getData(url) async {
    return await dio().get(url);
  }

  postData(url, data) async {
    return await dio().post(url, data: data);
  }

  putData(url, data) async {
    return await dio().put(url, data: data);
  }
}
