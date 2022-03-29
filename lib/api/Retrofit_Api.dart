import 'dart:io';

import 'package:dio/dio.dart';
import 'package:doctro/const/prefConstatnt.dart';
import 'package:doctro/const/preference.dart';


class RetroApi {
  Dio dioData() {
    final dio = Dio();
    HttpClient client = new HttpClient();
    client.badCertificateCallback =((X509Certificate cert, String  host, int port) => true);
    String? t = SharedPreferenceHelper.getString(Preferences.auth_token);
    dio.options.headers["Accept"] =
        "application/json"; // config your dio headers globally
    dio.options.followRedirects = false;
    dio.options.connectTimeout = 75000; //5s
    dio.options.receiveTimeout = 3000;
    if (t != "N/A") {
      dio.options.headers["Authorization"] = "Bearer " + t!;
    }
    return dio;
  }
}

class RetroApi2 {
  Dio dioData2() {
    final dio = Dio();
    HttpClient client = new HttpClient();
    client.badCertificateCallback =((X509Certificate cert, String  host, int port) => true);
    dio.options.headers["Accept"] =
     "application/json"; // config your dio headers globally
    dio.options.followRedirects = false;
    dio.options.connectTimeout = 75000; //5s
    dio.options.receiveTimeout = 3000;
    return dio;
  }
}
