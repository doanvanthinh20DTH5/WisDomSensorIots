import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/admin/detail_order/detail_order_screen.dart';

class OrderEmployeeController extends GetxController {
  var selectedAll = false.obs;
  var orders = <Order>[
    Order(
      id: 1423,
      status: 'Processing',
      imageUrl: 'assets/fire_alarm.png',
      itemName: 'Fire alarm sensor package',
      quantity: 1,
      price: 250,
    )
  ].obs;

  void toggleSelectAll() {
    selectedAll.value = !selectedAll.value;
    // Implement select all functionality
  }

  void printOrder() {
    // Implement print functionality
  }

  void viewDetails(int orderId) {
    Get.to(DetailOrderScreen());
  }
}

class Order {
  int id;
  String status;
  String imageUrl;
  String itemName;
  int quantity;
  double price;

  Order({
    required this.id,
    required this.status,
    required this.imageUrl,
    required this.itemName,
    required this.quantity,
    required this.price,
  });
}
