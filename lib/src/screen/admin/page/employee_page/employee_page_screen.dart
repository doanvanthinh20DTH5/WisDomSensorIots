import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/admin/page/employee_page/employee_controller.dart';


class EmployeePageScreen extends StatefulWidget {
  @override
  _EmployeePageScreenState createState() => _EmployeePageScreenState();
}

class _EmployeePageScreenState extends State<EmployeePageScreen> {
  final EmployeePageController controller = Get.put(EmployeePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee Management'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                controller.navigateToAddEmployee();
              },
              child: Text('Add Employee'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                controller.navigateToListEmployee();
              },
              child: Text('List Employee'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                controller.navigateToDetailEmployee();
              },
              child: Text('Detail Employee'),
            ),
          ],
        ),
      ),
    );
  }
}
