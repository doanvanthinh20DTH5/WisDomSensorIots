import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/admin/page/customer_page/customer_page_controller.dart';


class CustomerPageScreen extends StatefulWidget {
  @override
  _CustomerPageScreenState createState() => _CustomerPageScreenState();
}

class _CustomerPageScreenState extends State<CustomerPageScreen> {
  final CustomerPageController controller = Get.put(CustomerPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer Management'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                controller.navigateToDetailCustomer();
              },
              child: Text('Detail Customer'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                controller.navigateToListCustomer();
              },
              child: Text('List Customer'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                controller.navigateToOrderCustomer();
              },
              child: Text('Order Customer'),
            ),
          ],
        ),
      ),
    );
  }
}
