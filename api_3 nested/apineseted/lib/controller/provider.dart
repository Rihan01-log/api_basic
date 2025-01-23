import 'dart:developer';

import 'package:apineseted/model/model.dart';
import 'package:apineseted/service/service.dart';
import 'package:flutter/material.dart';

class GetPro extends ChangeNotifier {
  Employe ser = Employe();

  List<Userin> user = [];

  Future<void> getUser() async {
    try {
      Userin use = await ser.getEmplyee();
      user = [use];
      notifyListeners();
      log('data shown');
    } catch (e) {
      log('$e');
    }
  }
}
