import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/user/invoice_service_package/invoice_service_package_controller.dart';

class InvoiceServicePackageScreen extends StatefulWidget {
  @override
  _InvoiceServicePackageScreenState createState() =>
      _InvoiceServicePackageScreenState();
}

class _InvoiceServicePackageScreenState
    extends State<InvoiceServicePackageScreen> {
  final InvoiceServicePackageController controller =
      Get.put(InvoiceServicePackageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invoice Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Invoice Detail',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text('Full Name: ${controller.fullName}'),
            Text('Phone: ${controller.phone}'),
            Text('Email: ${controller.email}'),
            Text('Address: ${controller.address}'),
            SizedBox(height: 24),
            Text(
              'Device Info',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text('Name Service Package: ${controller.serviceName}'),
            Text('Quantity: ${controller.quantity}'),
            Text('Start Date: ${controller.startDate}'),
            Text('End Date: ${controller.endDate}'),
            SizedBox(height: 24),
            Text(
              'Payment Detail',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text('Total Service Package Fee: ${controller.totalServiceFee}'),
            Text('Total Equipment Cost: ${controller.totalEquipmentCost}'),
            Text('Ship Fee: ${controller.shipFee}'),
            Text('Service Discount: ${controller.serviceDiscount}'),
            Text('Total Payment: ${controller.totalPayment}'),
            SizedBox(height: 24),
            Text(
              'Payment Method',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => controller.downloadInvoice(),
              child: Text('Download'),
            ),
          ],
        ),
      ),
    );
  }
}
