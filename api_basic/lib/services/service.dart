import 'dart:developer';
import 'package:api_basic/model.dart/model.dart';
import 'package:dio/dio.dart';
// Adjust the path as needed

class FetchDataService {
  final String apiUrl =
      'https://jsonplaceholder.org/users/1'; // Example API endpoint
  Dio dio = Dio();

  Future<List<Employee>> getEmployees() async {
    try {
      final response = await dio.get(apiUrl);

      if (response.statusCode == 200) {
        log('Response Data: ${response.data}');

        List<dynamic> data = response.data;
        return data.map((item) => Employee.fromJson(item)).toList();
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      log('Error while fetching data: $e');
      throw Exception('Error fetching data');
    }
  }
}
