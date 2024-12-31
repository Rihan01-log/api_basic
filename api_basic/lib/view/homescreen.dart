import 'package:api_basic/controller/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class EmployeeScreen extends StatefulWidget {
  const EmployeeScreen({super.key});

  @override
  State<EmployeeScreen> createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<EmployeeProvider>(context, listen: false).fetchEmployeeData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employees'),
      ),
      body: Consumer<EmployeeProvider>(
        builder: (context, provider, _) {
          if (provider.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (provider.employees.isEmpty) {
            return const Center(child: Text('No employees found.'));
          }
          return ListView.builder(
            itemCount: provider.employees.length,
            itemBuilder: (context, index) {
              final employee = provider.employees[index];
              return ListTile(
                title: Text(employee.firstName ?? 'No first name'),
                subtitle: Text(employee.lastName ?? 'No last name'),
                trailing: Text(employee.email ?? 'No email'),
              );
            },
          );
        },
      ),
    );
  }
}
