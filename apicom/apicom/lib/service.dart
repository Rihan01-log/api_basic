import 'dart:developer';

import 'package:apicom/model.dart';
import 'package:dio/dio.dart';

class Pokee {
  static const url = 'https://pokeapi.co/api/v2/ability/battle-armor';
  Dio dio = Dio();

  Future<List<Effectentries>> fetData() async {
    try {
      final responds = await dio.get(url);

      if (responds.statusCode == 200) {
        List data = responds.data['effect_entries'];
        log(data.toString());
        return data.map((e) => Effectentries.fromJson(e)).toList();
      } else {
        throw Exception(' not fetched');
      }
    } on DioException catch (e) {
      log('error:$e');
      throw Exception('error in fetching');
    }
  }
}
