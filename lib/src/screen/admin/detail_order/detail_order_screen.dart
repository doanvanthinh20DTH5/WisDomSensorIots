import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/admin/detail_order/detail_order_controller.dart';

class DetailOrderScreen extends StatefulWidget {
  @override
  _OrderDetailScreenState createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<DetailOrderScreen> {
  final DetailOrderController controller = Get.put(DetailOrderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Order Detail')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(width: 16),
                Text('Username', style: TextStyle(fontSize: 16)),
                Spacer(),
                Icon(Icons.receipt),
                SizedBox(width: 8),
                Obx(() => Text('OrderID: ${controller.orderId.value}')),
              ],
            ),
            SizedBox(height: 8),
            Obx(() => Text('Order Date: ${controller.orderDate.value}')),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.local_shipping),
                      SizedBox(width: 8),
                      Obx(() => Text('Expected Date: ${controller.expectedDate.value}')),
                      Spacer(),
                      Column(
                        children: [
                          TextButton(
                            onPressed: () => controller.updateStatus('Expected'),
                            child: Text('Expected'),
                          ),
                          SizedBox(height: 8),
                          TextButton(
                            onPressed: () => controller.updateStatus('Processing'),
                            child: Text('Processing'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text('List Product'),
                  Divider(),
                  buildProductTable(),
                  Divider(),
                  Text('Payment Information', style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  buildPaymentInformation(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: controller.payOrder,
          child: Text('Pay'),
        ),
      ),
    );
  }

  Widget buildProductTable() {
    return Table(
      border: TableBorder.all(color: Colors.grey),
      children: [
        TableRow(
          decoration: BoxDecoration(color: Colors.grey[300]),
          children: [
            TableCell(child: Padding(padding: const EdgeInsets.all(8.0), child: Text('Product'))),
            TableCell(child: Padding(padding: const EdgeInsets.all(8.0), child: Text('Quantity'))),
            TableCell(child: Padding(padding: const EdgeInsets.all(8.0), child: Text('Unit Price'))),
            TableCell(child: Padding(padding: const EdgeInsets.all(8.0), child: Text('Discount'))),
            TableCell(child: Padding(padding: const EdgeInsets.all(8.0), child: Text('Ship Cost'))),
            TableCell(child: Padding(padding: const EdgeInsets.all(8.0), child: Text('Total'))),
          ],
        ),
        ...controller.products.map((product) {
          return TableRow(
            children: [
              TableCell(child: Padding(padding: const EdgeInsets.all(8.0), child: Text(product.name))),
              TableCell(child: Padding(padding: const EdgeInsets.all(8.0), child: Text('x${product.quantity}'))),
              TableCell(child: Padding(padding: const EdgeInsets.all(8.0), child: Text('\$${product.unitPrice}'))),
              TableCell(child: Padding(padding: const EdgeInsets.all(8.0), child: Text('\$${product.discount}'))),
              TableCell(child: Padding(padding: const EdgeInsets.all(8.0), child: Text('\$${product.shipCost}'))),
              TableCell(child: Padding(padding: const EdgeInsets.all(8.0), child: Text('\$${product.total}'))),
            ],
          );
        }).toList(),
      ],
    );
  }

  Widget buildPaymentInformation() {
    return Obx(() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Customer Name: Username'),
        Text('Payment Method: Credit Card'),
        Text('Address: 123 Main St, City, Country'),
        Text('Phone: 123-456-7890'),
        Text('Status: ${controller.status.value}'),
      ],
    ));
  }
}
