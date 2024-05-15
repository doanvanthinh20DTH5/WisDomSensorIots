import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/user/forgot_password/forgot_password_username/forgot_password_username_controller.dart';

class ForgotPasswordUsernameScreen extends StatefulWidget {
  @override
  _ForgotPasswordUsernameScreenState createState() => _ForgotPasswordUsernameScreenState();
}

class _ForgotPasswordUsernameScreenState extends State<ForgotPasswordUsernameScreen> {
  final ForgotPasswordUsernameController controller = Get.put(ForgotPasswordUsernameController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Forgot Password',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50),
            TextField(
              onChanged: (value) => controller.username.value = value,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(), // Viền mặc định
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2.0), // Viền khi không có focus
                ),
            ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: controller.send,
                  child: Text('Send'),
                ),
                ElevatedButton(
                  onPressed: controller.cancel,
                  child: Text('Cancel'),
                  style: ElevatedButton.styleFrom(
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
