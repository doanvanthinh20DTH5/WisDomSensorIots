import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'customer_order_controller.dart';

class CustomerOrderScreen extends StatefulWidget {
  @override
  _CustomerOrderScreenState createState() => _CustomerOrderScreenState();
}

class _CustomerOrderScreenState extends State<CustomerOrderScreen> {
  final CustomerOrderController controller = Get.put(CustomerOrderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Customer Order', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            Row(
              children: [
                Text('Username', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Spacer(),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.person),
                  label: Text('My Profile'),
                ),
                SizedBox(width: 8),

                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.card_giftcard),
                  label: Text('My Vouchers'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Text('ID: ${controller.orderId.value}', style: TextStyle(fontSize: 16)),
                Spacer(),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_bag),
                  label: Text('My Order'),
                ),
              ],
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text('ID: ${controller.orderId.value}', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('${controller.itemName.value}'),
            Text('${controller.itemPrice.value}'),
            Text('Order Total: \$${controller.orderTotal.value}'),

            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    TextButton(
                      onPressed: () => controller.reviewOrder(),
                      child: Text('Review'),
                    ),
                    SizedBox(width: 8),
                    TextButton(
                      onPressed: () => controller.contactStaff(),
                      child: Text('Contact Staff'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
