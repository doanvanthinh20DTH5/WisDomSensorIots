import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'list_order_controller.dart';

class ListOrderScreen extends StatefulWidget {
  @override
  _ListOrderScreenState createState() => _ListOrderScreenState();
}

class _ListOrderScreenState extends State<ListOrderScreen> {
  final ListOrderController controller = Get.put(ListOrderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Order List')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            TextField(
              onChanged: (value) => controller.searchOrders(value),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
              ),
            ),
            SizedBox(height: 16),
            Obx(() => Expanded(
              child: ListView.builder(
                itemCount: controller.orders.length,
                itemBuilder: (context, index) {
                  final order = controller.orders[index];
                  return OrderCard(order: order, controller: controller);
                },
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  final Order order;
  final ListOrderController controller;

  OrderCard({required this.order, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID #${order.id}', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Customer Name: ${order.customerName}'),
            Text('Status: ${order.status}'),
            Text('Total: \$${order.total}'),
            Text('Order Start Date: ${order.startDate}'),
            Text('Order End Date: ${order.endDate}'),
            Text('Payment Status: ${order.paymentStatus}'),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () => controller.navigateToviewDetails(order.id),
                child: Text('Detail'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
