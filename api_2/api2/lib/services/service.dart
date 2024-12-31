import 'dart:developer';

import 'package:api2/model/apimodel.dart';
import 'package:dio/dio.dart';

class FetchServices {
  final String fUrl = 'https://jsonplaceholder.org/users/1';

  Dio dio = Dio();

  Future<Userdetails> getUserdetails() async {
    try {
      final responds = await dio.get(fUrl);
      log(responds.toString());
      if (responds.statusCode == 200) {
        log('data fetchedd ');
        return Userdetails.fromJson(responds.data);
      } else {
        throw Exception('${responds.statusCode}-${responds.statusMessage}');
      }
    } catch (e) {
      if (e is DioException) {
        log('${e.response?.data} ${e.response?.statusMessage}');
      }
      throw Exception('rrrrrrr $e');
    }
  }
}
