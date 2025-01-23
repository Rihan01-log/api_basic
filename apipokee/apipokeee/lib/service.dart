import 'dart:developer';

import 'package:apipokeee/model.dart';
import 'package:dio/dio.dart';

class PokeeService {
  static const url = 'https://pokeapi.co/api/v2/pokemon/ditto';
  Dio dio = Dio();

  Future<List<Pokee3>> getData() async {
    try {
      final respons = await dio.get(url);
      if (respons.statusCode == 200) {
        log('hhuh');
        List<dynamic> datas = [respons.data];
        log(datas.toString());
        return datas.map((e) => Pokee3.fromJson(e)).toList();
      }
    } on DioException catch (e) {
      log('error:$e');
    }
    throw Exception('error');
  }
}
