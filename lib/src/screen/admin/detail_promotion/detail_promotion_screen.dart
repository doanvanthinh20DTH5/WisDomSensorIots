import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/admin/detail_promotion/detail_promotion_controller.dart';

class DetailPromotionScreen extends StatefulWidget {
  @override
  _DetailPromotionScreenState createState() => _DetailPromotionScreenState();
}

class _DetailPromotionScreenState extends State<DetailPromotionScreen> {
  final DetailPromotionController controller = Get.put(DetailPromotionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(),
        ),
        title: Text('Detail Promotion'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailItem('Name', controller.name.value),
            _buildDetailItem('Description', controller.description.value),
            _buildDetailItem('Code', controller.code.value),
            _buildDetailItem('Start Date', controller.startDate.value),
            _buildDetailItem('End Date', controller.endDate.value),
            _buildDetailItem('Amount', '${controller.amount.value}%'),
            _buildDetailItem('Remaining', controller.remaining.value.toString()),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => controller.editPromotion(),
                  child: Text('Edit'),
                ),
                ElevatedButton(
                  onPressed: () => controller.deletePromotion(),
                  child: Text('Delete'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(value),
        ],
      ),
    );
  }
}
