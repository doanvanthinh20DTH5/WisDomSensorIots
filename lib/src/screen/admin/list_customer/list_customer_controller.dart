import 'package:get/get.dart';

class ListCustomerController extends GetxController {
  var customers = <Customer>[
    Customer(
      name: 'Nguyễn Cao Danh',
      birthday: '22/12/2002',
      membership: 'SILVER CLASS',
      imageUrl: 'assets/customer_avatar.png', // Replace with your image asset path
    ),
    // Add more customers as needed
  ];
}

class Customer {
  final String name;
  final String birthday;
  final String membership;
  final String imageUrl;

  Customer({
    required this.name,
    required this.birthday,
    required this.membership,
    required this.imageUrl,
  });
}
