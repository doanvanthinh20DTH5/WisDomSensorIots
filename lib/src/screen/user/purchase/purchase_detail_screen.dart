import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/user/purchase/purchase_detail_controller.dart';


class PurchaseDetailScreen extends StatefulWidget {
  @override
  _PurchaseDetailScreenState createState() => _PurchaseDetailScreenState();
}

class _PurchaseDetailScreenState extends State<PurchaseDetailScreen> {
  final PurchaseDetailController controller = Get.put(PurchaseDetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: 350,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildStatusColumn(Icons.shopping_cart, 'Ordered', '02/02/2024 3:00'),
                  _buildStatusColumn(Icons.local_shipping, 'Shipped', '02/02/2024 5:00'),
                  _buildStatusColumn(Icons.receipt, 'Received', '02/02/2024 5:00'),
                  _buildStatusColumn(Icons.settings, 'Setting', '03/02/2024 5:00'),
                  _buildStatusColumn(Icons.star, 'Completed', '03/02/2024 5:00'),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: 350,
              height: 200,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Obx(() => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delivery Address',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    controller.deliveryAddress.value,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusColumn(IconData icon, String status, String dateTime) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 40),
        SizedBox(height: 8),
        Text(status, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        Text(dateTime, style: TextStyle(fontSize: 8, color: Colors.grey)),
      ],
    );
  }
}
