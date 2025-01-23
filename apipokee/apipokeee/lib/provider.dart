import 'dart:developer';

import 'package:apipokeee/model.dart';
import 'package:apipokeee/service.dart';
import 'package:flutter/material.dart';

class Pokee3Pro extends ChangeNotifier {
  final PokeeService pokeeser = PokeeService();
  List<Pokee3> data = [];

  Future<void> getPokee() async {
    try {
      data = await pokeeser.getData();
      if (data.isNotEmpty) {
        log("data fetched");
      }
    } catch (e) {
      log('error:$e');
    }
    notifyListeners();
  }
}
