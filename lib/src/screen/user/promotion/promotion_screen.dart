import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'promotion_controller.dart';

class PromotionScreen extends StatefulWidget {
  @override
  _PromotionScreenState createState() => _PromotionScreenState();
}

class _PromotionScreenState extends State<PromotionScreen> {
  final PromotionController controller = Get.put(PromotionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: Icon(Icons.arrow_back_ios),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: 350,
              height: 45,
              child: TextField(
                onChanged: (value) => controller.searchQuery.value = value,
                decoration: InputDecoration(
                  hintText: 'Search promotions',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: 350,
              height: 161,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Deep discounts for new members',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '15% discount on the first order of new customers. Applies to all service packages. Apply through all form of payment.',
                    style: TextStyle(fontSize: 12),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      onPressed: controller.usePromotion,
                      child: Text('Use'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(70, 30),
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: 350,
              height: 161,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '10% discount for orders over 300',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    ' 10% discount  for orders over 300 . Applies to all service packages. Apply through all formpayment.',
                    style: TextStyle(fontSize: 12),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      onPressed: controller.usePromotion,
                      child: Text('Use'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(70, 30),
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: 350,
              height: 161,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '10% discount for orders over 500',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    ' 10% discount  for orders over 500 . Applies to all service packages. Apply through all formpayment.',
                    style: TextStyle(fontSize: 12),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      onPressed: controller.usePromotion,
                      child: Text('Use'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(70, 30),
                        padding: EdgeInsets.zero,
                      ),
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
