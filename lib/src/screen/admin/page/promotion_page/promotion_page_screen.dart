import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/admin/page/promotion_page/promotion_page_controller.dart';


class PromotionPageScreen extends StatefulWidget {
  @override
  _PromotionPageScreenState createState() => _PromotionPageScreenState();
}

class _PromotionPageScreenState extends State<PromotionPageScreen> {
  final PromotionPageController controller = Get.put(PromotionPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Promotion Management'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                controller.navigateToDetailPromotion();
              },
              child: Text('Detail Promotion'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                controller.navigateToListPromotion();
              },
              child: Text('List Promotion'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                controller.navigateToUpdatePromotion();
              },
              child: Text('Update Promotion'),
            ),
          ],
        ),
      ),
    );
  }
}
