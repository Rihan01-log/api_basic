

import 'dart:developer';

import 'package:api2/model/apimodel.dart';
import 'package:api2/services/service.dart';
import 'package:flutter/material.dart';

class GetPro extends ChangeNotifier{
  FetchServices fetchServices=FetchServices();
  List <Userdetails>getDetails=[];
  bool isLoading=false;
Future<void>fetchItems()async{
isLoading=true;
notifyListeners();
try {
  Userdetails user=await fetchServices.getUserdetails();
  getDetails=[user];
  log('data provided:${getDetails.toString()}');
} catch (e) {
  log('error:$e');
}finally{
  isLoading=false;
  notifyListeners();
}
}

}