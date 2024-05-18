import 'package:get/get.dart';

class Employee {
  final String name;
  final String department;

  Employee(this.name, this.department);
}

class EmployeeController extends GetxController {
  RxList<Employee> employees = <Employee>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Đưa vào các dữ liệu mẫu cho danh sách nhân viên
    employees.addAll([
      Employee('Nguyễn Văn A', 'Marketing'),
      Employee('Nguyễn Cao Danh', 'IT'),
      Employee('Nguyễn Thị B', 'HR'),
      Employee('Trần Văn C', 'Directors'),
    ]);
  }
}
