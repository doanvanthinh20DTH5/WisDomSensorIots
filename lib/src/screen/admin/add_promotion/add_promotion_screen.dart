import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'add_promotion_controller.dart';

class AddPromotionScreen extends StatefulWidget {
  @override
  _AddPromotionScreenState createState() => _AddPromotionScreenState();
}

class _AddPromotionScreenState extends State<AddPromotionScreen> {
  final AddPromotionController controller = Get.put(AddPromotionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios), // Icon back của IOS
        title: Text('Add Promotion'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Name'),
                SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    onChanged: (value) => controller.name.value = value,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter name',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Description'),
                SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    onChanged: (value) => controller.description.value = value,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter description',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Code'),
                SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    onChanged: (value) => controller.code.value = value,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter code',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Start Date'),
                SizedBox(width: 16),
                Expanded(
                  child: InkWell(
                    onTap: () => _selectDate(context, controller.startDate),
                    child: Obx(
                          () => Text(controller.startDate.value.toString()),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('End Date'),
                SizedBox(width: 16),
                Expanded(
                  child: InkWell(
                    onTap: () => _selectDate(context, controller.endDate),
                    child: Obx(
                          () => Text(controller.endDate.value.toString()),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Limit'),
                SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) => controller.limit.value = int.parse(value),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter limit',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Amount'),
                SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) => controller.amount.value = int.parse(value),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter amount',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => controller.addPromotion(),
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }

  // Hàm để chọn ngày
  Future<void> _selectDate(BuildContext context, Rx<DateTime> date) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: date.value,
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      date.value = picked;
    }
  }
}
