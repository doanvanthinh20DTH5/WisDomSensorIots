import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/user/purchase/purchase_controller.dart';

class PurchaseScreen extends StatefulWidget {
  @override
  _PurchaseScreenState createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends State<PurchaseScreen> {
  final PurchaseController controller = Get.put(PurchaseController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (value) => controller.searchQuery.value = value,
                    decoration: InputDecoration(
                      hintText: 'Search orders',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: controller.searchOrders,
                ),
              ],
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The order was delivered',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Processing',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(Icons.car_rental, size: 40),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Car Sensor package',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            '250\$ / car',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: controller.reviewOrder,
                        child: Text('Review'),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 45),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: controller.buyAgain,
                        child: Text('Buy Again'),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 45),
                          primary: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
