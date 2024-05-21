import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'service_package_controller.dart';

class ServicePackageScreen extends StatefulWidget {
  @override
  _ServicePackageScreenState createState() => _ServicePackageScreenState();
}

class _ServicePackageScreenState extends State<ServicePackageScreen> {
  final ServicePackageController controller =
      Get.put(ServicePackageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sensor Service Pack'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 350,
              height: 150,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.directions_car, size: 40),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(() => Text(
                              controller.title.value,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            )),
                        SizedBox(height: 8),
                        Obx(() => Text(
                              controller.description.value,
                              style: TextStyle(fontSize: 12),
                            )),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: TextButton(
                              onPressed: () {
                                print('Buy Now button pressed');
                              },
                              child: Text('Buy Now'),
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                minimumSize: Size(
                                    100, 45), // Set button width and height
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                backgroundColor: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
