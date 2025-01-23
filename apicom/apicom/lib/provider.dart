import 'dart:developer';

import 'package:apicom/model.dart';
import 'package:apicom/service.dart';
import 'package:flutter/material.dart';

class Poke extends ChangeNotifier {
  final Pokee use = Pokee();
  List<Effectentries> user = [];
  Future<void> getPokee() async {
    try {
      user = await use.fetData();
      log(user.length.toString());
      notifyListeners();
    } catch (e) {
      log('error:$e');
    }
  }
}
