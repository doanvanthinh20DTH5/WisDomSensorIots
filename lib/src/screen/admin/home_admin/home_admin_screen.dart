import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/admin/list_order/list_order_screen.dart';
import 'package:wisdomsensoriots/src/screen/admin/page/customer_page/customer_page_screen.dart';
import 'package:wisdomsensoriots/src/screen/admin/page/employee_page/employee_page_screen.dart';
import 'package:wisdomsensoriots/src/screen/admin/page/promotion_page/promotion_page_screen.dart';
import 'package:wisdomsensoriots/src/screen/admin/page/service_page/service_page_screen.dart';

import 'home_admin_controller.dart';

class HomeAdminScreen extends StatefulWidget {
  @override
  _HomeAdminScreenState createState() => _HomeAdminScreenState();
}

class _HomeAdminScreenState extends State<HomeAdminScreen> {
  final HomeAdminController controller = Get.put(HomeAdminController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Obx(() {
        switch (controller.selectedIndex.value) {
          case 0:
            return EmployeePageScreen();
          case 1:
            return ListOrderScreen();
          case 2:
            return ServicePageScreen();
          case 3:
            return PromotionPageScreen();
          case 4:
            return CustomerPageScreen();
          default:
            return EmployeePageScreen();
        }
      }),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: controller.selectedIndex.value,
        onTap: (index) {
          controller.changePage(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Employee',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build),
            label: 'Service',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Promotion',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Customer',
          ),
        ],
      )),
    );
  }
}
