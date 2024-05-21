import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/admin/home_admin/home_admin_screen.dart';
import 'package:wisdomsensoriots/src/screen/admin/verify_email_admin/verify_email_admin_screen.dart';

class LoginAdminController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void login() {
    Get.to(HomeAdminScreen());
  }
  void goToVerifyEmail() {
    Get.to(VerifyEmailAdminScreen());
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}