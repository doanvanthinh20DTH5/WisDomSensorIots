import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/admin/change_password_admin/change_password_admin_screen.dart';

class VerifyEmailAdminController extends GetxController {
  var email = ''.obs;
  var verificationCode = List<String>.filled(6, '').obs;

  void verifyCode() {
    Get.to(ChangePasswordAdminScreen());
  }

  void sendAgain() {
  }
}
