import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddEmployeeController extends GetxController {
  // Controllers for text fields
  final lastNameController = TextEditingController();
  final firstNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final positionController = TextEditingController();

  // Gender selection
  var selectedGender = 'Male'.obs;

  @override
  void onClose() {
    // Dispose controllers when controller is closed
    lastNameController.dispose();
    firstNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    positionController.dispose();
    super.onClose();
  }
}
