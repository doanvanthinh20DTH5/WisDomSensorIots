import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/user/forgot_password/forgot_password/forgot_password_controller.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreemState createState() => _ForgotPasswordScreemState();
}

class _ForgotPasswordScreemState extends State<ForgotPasswordScreen> {
  final ForgotPasswordController controller = Get.put(ForgotPasswordController());

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
                labelText: 'New Password',
                border: OutlineInputBorder(), // Thêm viền cho TextField
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
