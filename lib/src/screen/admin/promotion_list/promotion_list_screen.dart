import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'promotion_list_controller.dart';

class PromotionListScreen extends StatefulWidget {
  @override
  _PromotionListScreenState createState() => _PromotionListScreenState();
}

class _PromotionListScreenState extends State<PromotionListScreen> {
  final PromotionListController controller = Get.put(PromotionListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios), // Icon back của IOS
        actions: [
          IconButton(
            onPressed: () {
              // Xử lý khi nhấn nút + add
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
              'Promotion List',
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
              'Details of the promotion...', // Thay đổi văn bản này bằng chi tiết của ưu đãi
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
