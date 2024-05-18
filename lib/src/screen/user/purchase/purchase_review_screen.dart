import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'purchase_review_controller.dart';

class PurchaseReviewScreen extends StatefulWidget {
  @override
  _PurchaseReviewScreenState createState() => _PurchaseReviewScreenState();
}

class _PurchaseReviewScreenState extends State<PurchaseReviewScreen> {
  final PurchaseReviewController controller = Get.put(PurchaseReviewController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Purchase Review'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 45,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [

                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(8.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.search),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.directions_car),
                      SizedBox(width: 16),
                      Text('Car Sensor Package'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text('250\$/month'),
                  SizedBox(height: 16),
                  Text(
                    'Your Rating',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text('Add Detailed Review'),
                  SizedBox(height: 8),
                  TextField(
                    maxLines: 3,
                    onChanged: (value) => controller.reviewText.value = value,
                    decoration: InputDecoration(
                      hintText: 'Write your review here...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          // Add photo logic
                        },
                        icon: Icon(Icons.add_a_photo),
                      ),
                      ElevatedButton(
                        onPressed: () => controller.submitReview(),
                        child: Text('Send'),
                      ),
                    ],
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
