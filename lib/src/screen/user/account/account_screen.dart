import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/user/account/account_controller.dart';


class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final AccountController controller = Get.put(AccountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextField(
              onChanged: (value) => controller.name.value = value,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Email:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextField(
              onChanged: (value) => controller.email.value = value,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Phone:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextField(
              onChanged: (value) => controller.phone.value = value,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Gender:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Expanded(
                  child: RadioListTile<String>(
                    title: Text('Male'),
                    value: 'Male',
                    groupValue: controller.gender.value,
                    onChanged: (value) {
                      controller.gender.value = value!;
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<String>(
                    title: Text('Female'),
                    value: 'Female',
                    groupValue: controller.gender.value,
                    onChanged: (value) {
                      controller.gender.value = value!;
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Birthday:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextField(
              onChanged: (value) => controller.birthday.value = value,
              decoration: InputDecoration(
                hintText: 'DD/MM/YYYY',
                border: OutlineInputBorder(), // Thêm viền cho TextField
              ),
            ),
            SizedBox(height: 32),
            Center(
              child: SizedBox(
                width: 350,
                height: 45,
                child: ElevatedButton(
                  onPressed: controller.saveProfile,
                  child: Text('Save'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
