import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:petshop/model/productmodel.dart';

class Productsrvice {
  final bserUrl = 'https://node-project-amber.vercel.app//products';
  Dio dio = Dio();

  Future<List<Data>> 
  productDetails() async {
    try {
      final responds = await dio.get(bserUrl);
      if (responds.statusCode == 200) {
        log('data fetched');
        List data = responds.data["data"];
        return data.map((e) => Data.fromJson(e)).toList();
      }
    } on DioException catch (e) {
      log('data not fetched :$e');
      throw Exception('$e');
    }
    return [];
  }
}
