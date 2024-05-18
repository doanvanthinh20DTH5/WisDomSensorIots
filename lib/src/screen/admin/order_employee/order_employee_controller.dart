import 'package:get/get.dart';

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
    // Implement view details functionality
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
