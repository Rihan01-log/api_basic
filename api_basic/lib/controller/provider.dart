import 'dart:developer';
import 'package:api_basic/model.dart/model.dart';
import 'package:api_basic/services/service.dart';
import 'package:flutter/material.dart';


class EmployeeProvider extends ChangeNotifier {
  FetchDataService fetchDataService = FetchDataService();
  List<Employee> employees = [];
  bool isLoading = false;

  Future<void> fetchEmployeeData() async {
    isLoading = true;
    notifyListeners();

    try {
      employees = await fetchDataService.getEmployees();
      log('Employees fetched: ${employees.length}');
    } catch (e) {
      log('Error fetching employees: $e');
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
