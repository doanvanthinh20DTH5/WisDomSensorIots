import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/user/forgot_password/forgot_password_email/forgot_passwprd_email_controller.dart';

class ForgotPasswordEmailScreen extends StatefulWidget {
  @override
  _ForgotPasswordEmailScreenState createState() =>
      _ForgotPasswordEmailScreenState();
}

class _ForgotPasswordEmailScreenState extends State<ForgotPasswordEmailScreen> {
  final ForgotPasswordEmailController controller =
      Get.put(ForgotPasswordEmailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Verify Email',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'We have sent a code to your email address',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(6, (index) {
                return SizedBox(
                  width: 40,
                  child: TextField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        controller.verificationCode[index] = value;
                        if (index < 5) {
                          FocusScope.of(context).nextFocus();
                        }
                      } else if (value.isEmpty) {
                        if (index > 0) {
                          controller.verificationCode[index] = '';
                          FocusScope.of(context).previousFocus();
                        }
                      }
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(),
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 16),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 300,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: controller.verifyCode,
                      child: Text('Verify Code'),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 300,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: controller.sendAgain,
                      child: Text('Send Again'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey, // Màu xám cho nút gửi lại
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
