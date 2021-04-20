import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app/models/home_model.dart';

class Api {
  Dio _dio;

  String _baseUrl = "https://www.thesportsdb.com/api/v1/json/1";

  Api() {
    BaseOptions options = BaseOptions(
        followRedirects: false,
        validateStatus: (status) {
          return status < 500;
        },
        receiveTimeout: 1000000,
        connectTimeout: 1000000,
        baseUrl: _baseUrl,
        contentType: Headers.jsonContentType);
    _dio = Dio(options);
  }

  Future<HomeModel> fetchHome() async {
    try {
      final resp = await _dio.get("/all_leagues.php");
      return HomeModel.fromJson(resp.data);
    } catch (err) {
      print(err.toString());
    }
  }

  Future<HomeModel> fetchDetail() async {
    try {
      final resp = await _dio.get("/all_leagues.php");
      return HomeModel.fromJson(resp.data);
    } catch (err) {
      print(err.toString());
    }
  }
}
