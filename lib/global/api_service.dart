import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'api_config.dart';

class ApiService extends GetxService {
  final storage = GetStorage();

  late Dio _dio = Dio();

  dio() {
    var options = BaseOptions(
        baseUrl: AppConfig.baseUrl,
        responseType: ResponseType.plain,
        contentType: 'application/json',
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
