import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/admin/edit_employee/edit_employee_screen.dart';
import 'package:wisdomsensoriots/src/screen/admin/order_employee/order_employee_screen.dart';

class Employee {
  final String name;
  final String id;
  final String email;
  final String phone;
  final String address;
  final String gender;
  final String birthday;
  final String position;
  final String department;

  Employee({
    required this.name,
    required this.id,
    required this.email,
    required this.phone,
    required this.address,
    required this.gender,
    required this.birthday,
    required this.position,
    required this.department,
  });
}

class DetailEmployeeController extends GetxController {
  Rx<Employee> employee = Employee(
    name: '',
    id: '',
    email: '',
    phone: '',
    address: '',
    gender: '',
    birthday: '',
    position: '',
    department: '',
  ).obs;

  void setEmployee(Employee emp) {
    employee.value = emp;
  }
  void navigateToEdit() {
    Get.to(EditEmployeeScreen());
  }
  void navigateToOrder() {
    Get.to(OrderEmployeeScreen());
  }
}
