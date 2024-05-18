import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'list_customer_controller.dart';

class ListCustomerScreen extends StatefulWidget {
  @override
  _ListCustomerScreenState createState() => _ListCustomerScreenState();
}

class _ListCustomerScreenState extends State<ListCustomerScreen> {
  final ListCustomerController controller = Get.put(ListCustomerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Customer')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.sort),
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
                itemCount: controller.customers.length,
                itemBuilder: (context, index) {
                  final customer = controller.customers[index];
                  return CustomerCard(customer: customer);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomerCard extends StatelessWidget {
  final Customer customer;

  CustomerCard({required this.customer});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(customer.imageUrl),
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(customer.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text(customer.birthday),
                Text(customer.membership),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
