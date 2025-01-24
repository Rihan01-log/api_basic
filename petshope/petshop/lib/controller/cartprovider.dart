import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:petshop/model/cartmodel.dart';
import 'package:petshop/service/cartservice.dart';

class Cartprovider extends ChangeNotifier {
  Cartservice cart = Cartservice();
  List<CartData> cartList = [];
  bool isLoading = false;

  Future addToCert(String? id) async {
    cart.addCart(id);
    notifyListeners();
  }

  Future<void> getAllCart() async {
    isLoading = true;
    notifyListeners();

    try {
      cartList = await cart.getCart();
      log(cartList.toString());
    } catch (e) {
      log('$e');
    } finally {
      isLoading = false;
    }
  }
}
