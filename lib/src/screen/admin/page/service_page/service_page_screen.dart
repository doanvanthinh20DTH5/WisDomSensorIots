import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/admin/page/service_page/service_page_controller.dart';


class ServicePageScreen extends StatefulWidget {
  @override
  _ServicePageScreenState createState() => _ServicePageScreenState();
}

class _ServicePageScreenState extends State<ServicePageScreen> {
  final ServicePageController controller = Get.put(ServicePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Service Management'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                controller.DetailServicePack();
              },
              child: Text('Detail Service Pack'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                controller.ListPackDetail();
              },
              child: Text('List Service Pack'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                controller.UpdateService();
              },
              child: Text('Update Service'),
            ),
          ],
        ),
      ),
    );
  }
}
