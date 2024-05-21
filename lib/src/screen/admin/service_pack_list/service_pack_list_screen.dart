import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/admin/service_pack_list/service_pack_list_controller.dart';

class ServicePackListScreen extends StatefulWidget {
  @override
  _ServiceListScreenState createState() => _ServiceListScreenState();
}

class _ServiceListScreenState extends State<ServicePackListScreen> {
  final ServicePackListController controller = Get.put(ServicePackListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios), // Icon back của IOS
        actions: [
          IconButton(
            onPressed: () {
                controller.goToAddServicePackageScreen();
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Service Package List',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.filter_list), // Icon lọc
                SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: controller.promotions.length,
                itemBuilder: (context, index) {
                  final promotion = controller.promotions[index];
                  return PromotionItem(promotion: promotion);
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class PromotionItem extends StatelessWidget {
  final String promotion;

  PromotionItem({required this.promotion});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              promotion,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Automotive sensors are devices used to sense and collect information about the vehicles surroundings to support autopilot and improve driving safety.', // Thay đổi văn bản này bằng chi tiết của ưu đãi
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
