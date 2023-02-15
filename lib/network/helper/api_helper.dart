import 'dart:convert';
import 'dart:io';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:dio_logger/dio_logger.dart';
import '../../server_information/ServerInfo.dart';
import '../network_service/AppException.dart';
import 'package:dio/dio.dart';


class ApiHelper {

  Future<dynamic> get(String path,
      {Map<String, Object>? query, bool firstHit = true}) async {
    var responseJson;

    var params =
        query != null && query.isNotEmpty ? genarate_query_string(query) : "";
    var url =
        (ServerInfo.URL + path + (params.isNotEmpty ? "?$params" : ""));
    try {

      var defaultHeaders = {
        'Content-type': 'application/json',
        'Connection': 'keep-alive',
        'Accept': 'application/json, text/plain, */*'
      };

      var uri = Uri.parse(url);

      Dio dio = Dio();
      dio.interceptors.add(PrettyDioLogger());
      dio.interceptors.add(dioLoggerInterceptor);
      try {
        var response = await dio.get(url,
            options: Options(
                headers: defaultHeaders,
                sendTimeout: 5000,
                receiveTimeout: 5000));
        return json.decode(response.toString());
      } on DioError catch (e) {
        switch (e.response?.statusCode ?? 404) {
          case 400:
            throw BadRequestException(e.response?.data.toString());
          case 401:
            throw UnauthorisedException(e.response?.data.toString());
            break;
          case 403:
            throw UnauthorisedException(e.response?.data.toString());
          case 422:
            throw BadRequestException(e.response?.data.toString());
          case 500:
          default:
            throw FetchDataException(
                'Error occurred while Communication with Server with StatusCode : ${e.response?.statusCode}');
        }
      }
    } catch (e) {
      if (e is SocketException) {
        throw FetchDataException('No Internet connection ' + e.message);
      }
    }
    return responseJson;
  }




  String genarate_query_string(Map params,
      {String prefix: '&', bool inRecursion: false}) {
    String query = '';

    params.forEach((key, value) {
      if (inRecursion) {
        key = '[$key]';
      }

      if (value is String || value is int || value is double || value is bool) {
        query += '$prefix$key=$value';
      } else if (value is List || value is Map) {
        if (value is List) value = value.asMap();
        value.forEach((k, v) {
          query += genarate_query_string({k: v},
              prefix: '$prefix$key', inRecursion: true);
        });
      }
    });

    return query;
  }


}


