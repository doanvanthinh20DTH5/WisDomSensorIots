import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/user/service_package_detail/service_package_detail_controller.dart';

class ServicePackageDetailScreen extends StatefulWidget {
  @override
  _ServicePackageDetailScreenState createState() => _ServicePackageDetailScreenState();
}

class _ServicePackageDetailScreenState extends State<ServicePackageDetailScreen> {
  final ServicePackageDetailController controller = Get.put(ServicePackageDetailController());

  int quantity = 1;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Service Package Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 350,
              height: 300,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.directions_car, size: 40),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(() => Text(
                            controller.title.value,
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                          )),
                          SizedBox(height: 8),
                          Container(
                            width: 260,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Obx(() => Text(
                              controller.description.value,
                              style: TextStyle(fontSize: 12),
                            )),
                          ),

                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: decrementQuantity,
                      icon: Icon(Icons.remove),
                    ),
                    Text('$quantity'),
                    IconButton(
                      onPressed: incrementQuantity,
                      icon: Icon(Icons.add),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {

                  },
                  child: Text('Buy Now'),
                ),
              ],
            ),

            Text(
              'Review:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),

            ),
             Center (
              child: TextButton(
                onPressed: () {
                  // Handle Send button press
                  print('Send pressed');
                },
                child: Text('Send'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
