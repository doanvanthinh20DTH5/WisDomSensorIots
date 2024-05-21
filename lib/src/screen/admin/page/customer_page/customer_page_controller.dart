import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/admin/customer_detail/customer_detail_screen.dart';
import 'package:wisdomsensoriots/src/screen/admin/customer_order/customer_order_screen.dart';
import 'package:wisdomsensoriots/src/screen/admin/list_customer/list_customer_screen.dart';



class CustomerPageController extends GetxController {
  void navigateToDetailCustomer() {
    Get.to(CustomerDetailScreen());
  }

  void navigateToListCustomer() {
    Get.to(ListCustomerScreen());
  }

  void navigateToOrderCustomer() {
    Get.to(CustomerOrderScreen());
  }
}
