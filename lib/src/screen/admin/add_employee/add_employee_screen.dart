import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'add_employee_controller.dart';

class AddEmployeeScreen extends StatefulWidget {
  @override
  _AddEmployeeScreenState createState() => _AddEmployeeScreenState();
}

class _AddEmployeeScreenState extends State<AddEmployeeScreen> {
  final AddEmployeeController controller = Get.put(AddEmployeeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                CupertinoButton(
                  onPressed: () {
                    Get.back(); // Navigate back
                  },
                  child: Icon(Icons.arrow_back_ios),
                ),
                Text(
                  'Add Employee',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 16),
            buildTextField(
              label: 'Last Name',
              controller: controller.lastNameController,
            ),
            SizedBox(height: 16),
            buildTextField(
              label: 'First Name',
              controller: controller.firstNameController,
            ),
            SizedBox(height: 16),
            buildTextField(
              label: 'Email',
              controller: controller.emailController,
            ),
            SizedBox(height: 16),
            buildTextField(
              label: 'Phone',
              controller: controller.phoneController,
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'DD/MM/YYYY',
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Obx(
                      () => Row(
                    children: [
                      Text('Male'),
                      Radio(
                        value: 'Male',
                        groupValue: controller.selectedGender.value,
                        onChanged: (value) {
                        },
                      ),
                      Text('Female'),
                      Radio(
                        value: 'Female',
                        groupValue: controller.selectedGender.value,
                        onChanged: (value) {
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            buildTextField(
              label: 'Username',
              controller: controller.usernameController,
            ),
            SizedBox(height: 16),
            buildTextField(
              label: 'Password',
              controller: controller.passwordController,
              obscureText: true,
            ),
            SizedBox(height: 16),
            buildTextField(
              label: 'Position',
              controller: controller.positionController,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle add employee logic
              },
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField({
    required String label,
    required TextEditingController controller,
    bool obscureText = false,
  }) {
    return Container(
      height: 45,
      width: 350,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: label,
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 12),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose(); // Dispose controller when screen is disposed
    super.dispose();
  }
}
