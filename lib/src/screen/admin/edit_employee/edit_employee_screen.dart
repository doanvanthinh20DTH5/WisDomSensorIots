import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/admin/edit_employee/edit_employee_controller.dart';

class EditEmployeeScreen extends StatefulWidget {
  @override
  _EditEmployeeScreenState createState() => _EditEmployeeScreenState();
}

class _EditEmployeeScreenState extends State<EditEmployeeScreen> {
  final EditEmployeeController controller = Get.put(EditEmployeeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView( // Wrap with SingleChildScrollView
          child: Column(
            children: [
              Text('My Account', style: TextStyle(fontSize: 24)),
              SizedBox(height: 16),
              Container(
                width: 350,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/avatar.png'), // Replace with your image asset
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Obx(() => Text('Username: ${controller.name.value}', style: TextStyle(fontSize: 16))),
                            ElevatedButton(
                              onPressed: () {
                                // Implement edit profile functionality
                              },
                              child: Text('Edit Profile'),
                            ),
                            Text('My Account'),
                            Text('Profile'),
                            Text('Change Password'),
                            Text('Notification'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Text('My Profile', style: TextStyle(fontSize: 24)),
              Text('Manage and protect your account', style: TextStyle(fontSize: 16)),
              SizedBox(height: 16),
              buildTextField('Name', controller.name),
              buildTextField('Email', controller.email),
              buildTextField('Phone', controller.phone),
              buildTextField('Address', controller.address),
              buildGenderSelection(),
              buildBirthdaySelection(),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: controller.saveProfile,
                    child: Text('Save'),
                  ),
                  ElevatedButton(
                    onPressed: controller.deleteProfile,
                    child: Text('Delete'),
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String label, RxString value) {
    return Obx(() => TextField(
      decoration: InputDecoration(labelText: label),
      controller: TextEditingController(text: value.value),
      onChanged: (newValue) => value.value = newValue,
    ));
  }

  Widget buildGenderSelection() {
    return Obx(() => Row(
      children: [
        Text('Gender:'),
        Radio(
          value: 'Male',
          groupValue: controller.gender.value,
          onChanged: (value) {
            controller.gender.value = value as String;
          },
        ),
        Text('Male'),
        Radio(
          value: 'Female',
          groupValue: controller.gender.value,
          onChanged: (value) {
            controller.gender.value = value as String;
          },
        ),
        Text('Female'),
      ],
    ));
  }

  Widget buildBirthdaySelection() {
    return Obx(() => Row(
      children: [
        Text('Birthday: '),
        TextButton(
          onPressed: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: controller.birthday.value,
              firstDate: DateTime(1900),
              lastDate: DateTime(2100),
            );
            if (pickedDate != null) {
              controller.birthday.value = pickedDate;
            }
          },
          child: Text('${controller.birthday.value.toLocal()}'.split(' ')[0]),
        ),
      ],
    ));
  }
}
