import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterServicePackageController extends GetxController {
  final emailController = TextEditingController();
  final fullNameController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final districtController = TextEditingController();
  final wardController = TextEditingController();
  final deliveryController = TextEditingController();
  final paymentController = TextEditingController();

  @override
  void onClose() {
    emailController.dispose();
    fullNameController.dispose();
    phoneController.dispose();
    addressController.dispose();
    cityController.dispose();
    districtController.dispose();
    wardController.dispose();
    deliveryController.dispose();
    paymentController.dispose();
    super.onClose();
  }
}
