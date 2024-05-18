import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'detail_employee_controller.dart';

class DetailEmployeeScreen extends StatefulWidget {
  @override
  _DetailEmployeeScreenState createState() => _DetailEmployeeScreenState();
}

class _DetailEmployeeScreenState extends State<DetailEmployeeScreen> {
  final DetailEmployeeController controller = Get.put(DetailEmployeeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CupertinoButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Icon(Icons.arrow_back_ios),
                ),
                Text(
                  'Information Employee',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 16),
            Container(
              height: 150,
              width: double.infinity,
              child: ClipOval(

              ),
            ),
            SizedBox(height: 16),
            Obx(() => Text('Name: ${controller.employee.value.name}')),
            Obx(() => Text('ID: ${controller.employee.value.id}')),
            Obx(() => Text('Email: ${controller.employee.value.email}')),
            Obx(() => Text('Phone: ${controller.employee.value.phone}')),
            Obx(() => Text('Address: ${controller.employee.value.address}')),
            Obx(() => Text('Gender: ${controller.employee.value.gender}')),
            Obx(() => Text('Birthday: ${controller.employee.value.birthday}')),
            Obx(() => Text('Position: ${controller.employee.value.position}')),
            Obx(() => Text('Department: ${controller.employee.value.department}')),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle orders button pressed
                  },
                  child: Text('Orders'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle contact button pressed
                  },
                  child: Text('Contact'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle edit button pressed
                  },
                  child: Text('Edit'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
