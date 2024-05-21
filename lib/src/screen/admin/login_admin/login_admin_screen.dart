import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/admin/login_admin/login_admin_controller.dart';

class LoginAdminScreen extends StatefulWidget {
  @override
  _LoginAdminScreenState createState() => _LoginAdminScreenState();
}

class _LoginAdminScreenState extends State<LoginAdminScreen> {
  final LoginAdminController loginController = Get.put(LoginAdminController());

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
                loginController.goToVerifyEmail();
              },
              child: Text('Forgot Password?'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                loginController.login();
              },
              child: Text('Login'),
            ),

          ],
        ),
      ),
    );
  }
}