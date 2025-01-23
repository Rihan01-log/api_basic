import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:petshop/model/loginmodel.dart';
import 'package:petshop/model/registermodel.dart';

class Registerandlogin {
  final baserUrl = 'https://node-project-amber.vercel.app';
  Dio dio = Dio();
  FlutterSecureStorage storage = FlutterSecureStorage();

  void register(Registermodel data) async {
    try {
      final respone =
          await dio.post('${baserUrl}register', data: data.toJson());
      if (respone.statusCode == 200) {
        log(respone.data);
        final token = respone.data['token'];
        await storage.write(key: 'auth token', value: token);
      } else {
        log('unexpected error occurs:${respone.statusCode}');
      }
    } on DioException catch (e) {
      log('${e.response?.statusCode}');
    }

  }

Future<void>loginUser(Loginmodel user)async{
try {
  final respose=await dio.post('${baserUrl}login',data: user.toJson());
  if (respose.statusCode==200) {
    log('${respose.data['message']}');
    final token=respose.data['token'];
    log(token);
    await storage.write(key: 'auth token', value: token);
  }
}on DioException catch (e) {
  throw Exception('$e');
}


}
  
}
