import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:petshop/model/productmodel.dart';
import 'package:petshop/service/productsrvice.dart';

class Productpro extends ChangeNotifier {
  Productsrvice service = Productsrvice();
  List<Productmodel> product = [];
  bool isLoading = true;

  void getProduct() async {
    try {
      product = await service.productDetails();
      log('data not reached in provider');
    } catch (e) {
      throw Exception('$e');
    }
    notifyListeners();
  }
}
