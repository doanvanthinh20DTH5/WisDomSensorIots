import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/admin/add_service_package/add_service_package_controller.dart';

class AddServicePackageScreen extends StatefulWidget {
  @override
  _AddServicePackageScreenState createState() => _AddServicePackageScreenState();
}

class _AddServicePackageScreenState extends State<AddServicePackageScreen> {
  final AddServicePackageController controller = Get.put(AddServicePackageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(), // Đóng màn hình khi nhấn nút back
        ),
        title: Text('Add Service'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUserImage(), // Hiển thị hình ảnh người dùng
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Xử lý khi nhấn nút select image
              },
              child: Text('Select Image'),
            ),
            SizedBox(height: 16),
            _buildTextField('Name', controller.name),
            SizedBox(height: 16),
            _buildTextField('Description', controller.description),
            SizedBox(height: 16),
            _buildTextField('ID', controller.id),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: _buildTextField('Price', controller.price),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: _buildTextField('Per', controller.per),
                ),
              ],
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => controller.addServicePackage(),
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserImage() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.withOpacity(0.3),
      ),
      child: Icon(Icons.person, size: 60, color: Colors.grey),
    );
  }

  Widget _buildTextField(String label, RxString value) {
    return TextField(
      onChanged: (newValue) => value.value = newValue,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
    );
  }
}
