import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:petshop/model/cartmodel.dart';

class Cartservice {
  Dio dio = Dio();
  FlutterSecureStorage storage = FlutterSecureStorage();

  Future<void> addCart(String? id) async {
    final base = 'https://node-project-amber.vercel.app/$id/cart';
    final token = await storage.read(key: 'auth_token');
    final headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    };

    try {
      final response = await dio.post(base, options: Options(headers: headers));
      if (response.statusCode == 200) {
        log('add to cart');
      }
    } on DioException catch (e) {
      log('$e');
    }
  }

  Future<List<CartData>> getCart() async {
    final base = 'https://node-project-amber.vercel.app/:id/cart';
    final token = await storage.read(key: 'auth_token');
    final headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    };
    try {
      final response = await dio.get(base, options: Options(headers: headers));
      List data = response.data;
      return data.map((e) => CartData.fromJson(e)).toList();
    } on DioException catch (e) {
      throw Exception('$e');
    }
  }
}
