import 'dart:developer';

import 'package:apineseted/model/model.dart';
import 'package:apineseted/service/service.dart';
import 'package:flutter/material.dart';

class GetPro extends ChangeNotifier {
  Employe ser = Employe();

  List<Userin> user = [];

  Future<void> getUser() async {
    notifyListeners();

    try {
      Userin use = await ser.getEmplyee();
      user = [use];
      log('data shown');
    } catch (e) {
      log('$e');
    }
  }
}
