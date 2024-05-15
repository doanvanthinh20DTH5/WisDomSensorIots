import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/user/register/register_controller.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final RegisterController controller = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // Sử dụng SingleChildScrollView để tránh lỗi layout
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (value) => controller.lastName.value = value,
                    decoration: InputDecoration(labelText: 'Last Name'),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    onChanged: (value) => controller.firstName.value = value,
                    decoration: InputDecoration(labelText: 'First Name'),
                  ),
                ),
              ],
            ),
            TextField(
              onChanged: (value) => controller.email.value = value,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              onChanged: (value) => controller.phone.value = value,
              decoration: InputDecoration(labelText: 'Phone'),
            ),
            TextField(
              onChanged: (value) => controller.birthDate.value = value,
              decoration: InputDecoration(labelText: 'DD/MM/YYYY'),
            ),
            Row(
              children: [
                Text('Gender:'),
                Expanded(
                  child: RadioListTile<String>(
                    title: Text('Male'),
                    value: 'Male',
                    groupValue: controller.gender.value,
                    onChanged: (value) => controller.gender.value = value!,
                  ),
                ),
                Expanded(
                  child: RadioListTile<String>(
                    title: Text('Female'),
                    value: 'Female',
                    groupValue: controller.gender.value,
                    onChanged: (value) => controller.gender.value = value!,
                  ),
                ),
              ],
            ),
            TextField(
              onChanged: (value) => controller.username.value = value,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              onChanged: (value) => controller.password.value = value,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: controller.register,
                child: Text('Register'),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: TextButton(
                onPressed: () {
                  // Chuyển hướng đến trang đăng nhập
                  print('Navigating to login screen...');
                },
                child: Text('Already have an account? Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
