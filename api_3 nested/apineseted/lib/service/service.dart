import 'dart:developer';

import 'package:apineseted/model/model.dart';
import 'package:dio/dio.dart';

class Employe {
  final String futls = 'https://jsonplaceholder.org/users/1';
  Dio dio = Dio();
  Future<Userin> getEmplyee() async {
    try {
      final responds = await dio.get(futls);
      log(responds.toString());
      if (responds.statusCode == 200) {
        log('data fetched');
        return Userin.formJson(responds.data);
      } else {
        throw Exception('${responds.statusCode}-${responds.statusMessage}');
      }
    } catch (e) {
      if (e is DioException) {
        log('data not loading');
      }
      throw Exception('error:$e');
    }
  }
  
}
