import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  var newPassword = ''.obs;
  var reEnterPassword = ''.obs;

  void confirmPassword() {
    if (newPassword.value == reEnterPassword.value) {

    } else {
    }
  }
}
