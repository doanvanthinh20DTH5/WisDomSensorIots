import 'package:get/get.dart';

class EditEmployeeController extends GetxController {
  var name = '123 123'.obs;
  var email = '123@gmail.com'.obs;
  var phone = '1231231'.obs;
  var address = 'Quang Trung, 157 Xuân Phú, Quảng Bình'.obs;
  var gender = 'Male'.obs;
  var birthday = DateTime.now().obs;

  void updateName(String newName) {
    name.value = newName;
  }

  void updateEmail(String newEmail) {
    email.value = newEmail;
  }

  void updatePhone(String newPhone) {
    phone.value = newPhone;
  }

  void updateAddress(String newAddress) {
    address.value = newAddress;
  }

  void updateGender(String newGender) {
    gender.value = newGender;
  }

  void updateBirthday(DateTime newDate) {
    birthday.value = newDate;
  }

  void saveProfile() {
    // Implement save functionality
  }

  void deleteProfile() {
    // Implement delete functionality
  }
}
