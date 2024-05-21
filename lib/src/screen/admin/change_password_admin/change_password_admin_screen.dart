import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/admin/change_password_admin/change_password_admin_controller.dart';

class ChangePasswordAdminScreen extends StatefulWidget {
  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordAdminScreen> {
  final ChangePasswordAdminController controller = Get.put(ChangePasswordAdminController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Change your password',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              onChanged: (value) => controller.newPassword.value = value,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              onChanged: (value) => controller.newPassword.value = value,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'New Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              onChanged: (value) => controller.reEnterPassword.value = value,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Re-enter Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 32),
            Center(
              child: SizedBox(
                width: 350,
                height: 45,
                child: ElevatedButton(
                  onPressed: controller.confirmPassword,
                  child: Text('Confirm Password'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
