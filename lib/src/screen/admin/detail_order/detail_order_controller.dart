import 'package:get/get.dart';

class DetailOrderController extends GetxController {
  var orderId = 123213.obs;
  var orderDate = '23/12'.obs;
  var expectedDate = '01/01/2024'.obs;
  var status = 'Processing'.obs;

  var products = [
    Product(
      name: 'Fire alarm',
      quantity: 1,
      unitPrice: 250,
      discount: 10,
      shipCost: 10,
      total: 250,
    )
  ].obs;

  void updateStatus(String newStatus) {
    status.value = newStatus;
  }

  void payOrder() {
    // Implement pay functionality
  }
}

class Product {
  String name;
  int quantity;
  double unitPrice;
  double discount;
  double shipCost;
  double total;

  Product({
    required this.name,
    required this.quantity,
    required this.unitPrice,
    required this.discount,
    required this.shipCost,
    required this.total,
  });
}
