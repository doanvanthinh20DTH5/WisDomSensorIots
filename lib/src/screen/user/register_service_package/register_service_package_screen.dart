import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/user/register_service_package/register_service_package_controller.dart';

class RegisterServicePackageScreen extends StatefulWidget {
  @override
  _RegisterServicePackageScreenState createState() =>
      _RegisterServicePackageScreenState();
}

class _RegisterServicePackageScreenState
    extends State<RegisterServicePackageScreen> {
  final RegisterServicePackageController controller =
  Get.put(RegisterServicePackageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Service Package'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left Container
            Container(
              width: 175,
              height: 600,
              padding: EdgeInsets.all(12.0),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: controller.emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      constraints: BoxConstraints(
                        maxWidth: 350,
                        maxHeight: 45,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    controller: controller.fullNameController,
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0), // Độ cong của góc viền
                        borderSide: BorderSide(color: Colors.grey), // Màu sắc của viền
                      ),
                      constraints: BoxConstraints(
                        maxWidth: 350,
                        maxHeight: 45,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    controller: controller.phoneController,
                    decoration: InputDecoration(
                      labelText: 'Phone',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0), // Độ cong của góc viền
                        borderSide: BorderSide(color: Colors.grey), // Màu sắc của viền
                      ),
                      constraints: BoxConstraints(
                        maxWidth: 350,
                        maxHeight: 45,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    controller: controller.addressController,
                    decoration: InputDecoration(
                      labelText: 'Address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0), // Độ cong của góc viền
                        borderSide: BorderSide(color: Colors.grey), // Màu sắc của viền
                      ),
                      constraints: BoxConstraints(
                        maxWidth: 350,
                        maxHeight: 45,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    controller: controller.cityController,
                    decoration: InputDecoration(
                      labelText: 'City',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0), // Độ cong của góc viền
                        borderSide: BorderSide(color: Colors.grey), // Màu sắc của viền
                      ),
                      constraints: BoxConstraints(
                        maxWidth: 350,
                        maxHeight: 45,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    controller: controller.districtController,
                    decoration: InputDecoration(
                      labelText: 'District',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0), // Độ cong của góc viền
                        borderSide: BorderSide(color: Colors.grey), // Màu sắc của viền
                      ),
                      constraints: BoxConstraints(
                        maxWidth: 350,
                        maxHeight: 45,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    controller: controller.wardController,
                    decoration: InputDecoration(
                      labelText: 'Ward',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0), // Độ cong của góc viền
                        borderSide: BorderSide(color: Colors.grey), // Màu sắc của viền
                      ),
                      constraints: BoxConstraints(
                        maxWidth: 350,
                        maxHeight: 45,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 1), // Spacer between containers
            // Right Container
            Container(
              width: 180,
              height: 700,
              padding: EdgeInsets.all(16.0),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Ship:'),

                  TextField(
                    controller: controller.deliveryController,
                    decoration: InputDecoration(
                      labelText: 'Please enter delivery' ,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0), // Độ cong của góc viền
                        borderSide: BorderSide(color: Colors.grey), // Màu sắc của viền
                      ),
                      constraints: BoxConstraints(
                        maxWidth: 350,
                        maxHeight: 45,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('Pay:'),
                  TextField(
                    controller: controller.paymentController,
                    decoration: InputDecoration(
                      labelText: 'Payment via MOMO' ,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0), // Độ cong của góc viền
                        borderSide: BorderSide(color: Colors.grey), // Màu sắc của viền
                      ),
                      constraints: BoxConstraints(
                        maxWidth: 350,
                        maxHeight: 45,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: controller.paymentController,
                    decoration: InputDecoration(
                      labelText: 'Pay on delivery (COD)' ,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0), // Độ cong của góc viền
                        borderSide: BorderSide(color: Colors.grey), // Màu sắc của viền
                      ),
                      constraints: BoxConstraints(
                        maxWidth: 350,
                        maxHeight: 45,
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

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
