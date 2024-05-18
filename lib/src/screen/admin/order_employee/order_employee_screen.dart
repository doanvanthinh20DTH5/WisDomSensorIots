import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'order_employee_controller.dart';

class OrderEmployeeScreen extends StatefulWidget {
  @override
  _OrderEmployeeState createState() => _OrderEmployeeState();
}

class _OrderEmployeeState extends State<OrderEmployeeScreen> {
  final OrderEmployeeController controller = Get.put(OrderEmployeeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                  ),
                  SizedBox(width: 16),
                  Text('Username', style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: controller.toggleSelectAll,
                  child: Text('Select All'),
                ),
                ElevatedButton(
                  onPressed: controller.printOrder,
                  child: Text('Print'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Obx(() => Column(
              children: controller.orders.map((order) {
                return OrderCard(order: order, controller: controller);
              }).toList(),
            )),
          ],
        ),
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  final Order order;
  final OrderEmployeeController controller;

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
            Row(
              children: [
                Text('ID: ${order.id}'),
                SizedBox(width: 8),
                Icon(Icons.local_shipping),
                SizedBox(width: 8),
                Text(order.status),
              ],
            ),

            Row(
              children: [
                SizedBox(width: 16),
                Expanded(
                  child: Row(
                    children: [
                      Text(order.itemName),
                      Text('x${order.quantity}'),
                      Text('\$${order.price}'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order Total: \$${order.price}'),
                ElevatedButton(
                  onPressed: () => controller.viewDetails(order.id),
                  child: Text('Detail'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
