import 'package:get/get.dart';

class ChangePasswordAdminController extends GetxController {
  var password = ''.obs;
  var newPassword = ''.obs;
  var reEnterPassword = ''.obs;

  void confirmPassword() {
    if (newPassword.value == reEnterPassword.value) {

    } else {
    }
  }
}
