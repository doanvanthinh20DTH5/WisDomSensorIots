import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'customer_detail_controller.dart';

class CustomerDetailScreen extends StatefulWidget {
  @override
  _CustomerDetailScreenState createState() => _CustomerDetailScreenState();
}

class _CustomerDetailScreenState extends State<CustomerDetailScreen> {
  final CustomerDetailController controller = Get.put(CustomerDetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Customer Detail')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Username', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Spacer(),
                Icon(Icons.person),
                SizedBox(width: 8),
                Text('My Profile'),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text('ID: 1123213', style: TextStyle(fontSize: 16)),
                Spacer(),
                Icon(Icons.shopping_bag),
                SizedBox(width: 8),
                Text('My Order'),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.card_giftcard),
                  label: Text('My Voucher'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.contact_phone),
                  label: Text('My Contact'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text('Profile', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            Obx(() => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('First Name: ${controller.firstName.value}', style: TextStyle(fontSize: 16)),
                Text('Last Name: ${controller.lastName.value}', style: TextStyle(fontSize: 16)),
                Text('Email: ${controller.email.value}', style: TextStyle(fontSize: 16)),
                Text('Phone: ${controller.phone.value}', style: TextStyle(fontSize: 16)),
                Text('Address: ${controller.address.value}', style: TextStyle(fontSize: 16)),
                Text('Gender: ${controller.gender.value}', style: TextStyle(fontSize: 16)),
                Text('Birth Date: ${controller.birthDate.value}', style: TextStyle(fontSize: 16)),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
