import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/admin/add_employee/add_employee_screen.dart';
import 'package:wisdomsensoriots/src/screen/admin/detail_employee/detail_employee_screen.dart';
import 'package:wisdomsensoriots/src/screen/admin/list_employee/list_employee_screen.dart';


class EmployeePageController extends GetxController {
  void navigateToAddEmployee() {
    Get.to(AddEmployeeScreen());
  }

  void navigateToListEmployee() {
    Get.to(ListEmployeeScreen());
  }

  void navigateToDetailEmployee() {
    Get.to(DetailEmployeeScreen());
  }
}
