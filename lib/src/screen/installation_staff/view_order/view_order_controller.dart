import 'package:get/get.dart';

class Order {
  final String id;
  final String customerName;

  Order({required this.id, required this.customerName});
}

class ViewOrderController extends GetxController {
  RxList<Order> orders = <Order>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Simulate fetching order data (replace with actual data retrieval logic)
    fetchOrders();
  }

  void fetchOrders() {
    // Here you can fetch orders from an API or database
    // For demo, we'll add dummy data
    orders.assignAll([
      Order(id: '#12345', customerName: 'Nguyễn Cao Danh'),
      Order(id: '#13215', customerName: 'Nguyễn Cao Chiến'),
    ]);
  }
}
