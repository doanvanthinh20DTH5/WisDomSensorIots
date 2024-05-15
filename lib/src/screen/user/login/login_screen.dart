import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/user/login/login_controller.dart';

class LoginScreen extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: loginController.usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: loginController.passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
              },
              child: Text('Forgot Password?'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
              },
              child: Text('Login'),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                  },
                  icon: Icon(Icons.facebook),
                ),
                IconButton(
                  onPressed: () {
                  },
                  icon: Icon(Icons.facebook),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text('Do not have an account? Register'),
          ],
        ),
      ),
    );
  }
}