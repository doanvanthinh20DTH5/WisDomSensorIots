import 'package:get/get.dart';

class ForgotPasswordEmailController extends GetxController {
  var email = ''.obs;
  var verificationCode = List<String>.filled(6, '').obs;

  void verifyCode() {

  }

  void sendAgain() {
  }
}
