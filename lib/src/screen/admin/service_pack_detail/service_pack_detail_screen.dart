import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/admin/service_pack_detail/service_pack_detail_controller.dart';

class ServicePackDetailScreen extends StatefulWidget {
  @override
  _ServicePackDetailScreenState createState() => _ServicePackDetailScreenState();
}

class _ServicePackDetailScreenState extends State<ServicePackDetailScreen> {
  final ServicePackDetailController controller = Get.put(ServicePackDetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Service pack details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Car Sensor Package',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Fire alarm sensor services are solutions that provide sensor devices and related systems to detect and warn of the occurrence of fire or smoke hazards in a given environment. These services have an important role to play in protecting people and property from the risk of fire and explosion. Here are some common features and applications of fire alarm sensor service:',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 8),
                  Text('250\$/month'),
                  SizedBox(width: 6),
                  ElevatedButton(
                    onPressed: () => controller.submitReview(),
                    child: Text('Edit'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Review',
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
                  SizedBox(height: 8),
                  TextField(
                    maxLines: 3,
                    onChanged: (value) => controller.reviewText.value = value,
                    decoration: InputDecoration(
                      hintText: 'name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
