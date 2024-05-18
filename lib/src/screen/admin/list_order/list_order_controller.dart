import 'package:get/get.dart';

class ListOrderController extends GetxController {
  var searchQuery = ''.obs;
  var orders = <Order>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Load initial data here
    loadOrders();
  }

  void loadOrders() {
    // Sample data
    orders.assignAll([
      Order(
        id: 12313,
        customerName: 'Nguyễn Cao Danh',
        status: 'Processing',
        total: 260,
        startDate: '02/02/2024',
        endDate: '02/08/2024',
        paymentStatus: 'Paid',
      ),
      // Add more orders as needed
    ]);
  }

  void searchOrders(String query) {
    searchQuery.value = query;
    orders.assignAll(orders.where((order) => order.customerName.contains(query)));
  }

  void viewDetails(int orderId) {
  }
}

class Order {
  int id;
  String customerName;
  String status;
  double total;
  String startDate;
  String endDate;
  String paymentStatus;

  Order({
    required this.id,
    required this.customerName,
    required this.status,
    required this.total,
    required this.startDate,
    required this.endDate,
    required this.paymentStatus,
  });
}
