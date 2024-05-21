import 'package:get/get.dart';

class PurchaseController extends GetxController {
  var searchQuery = ''.obs;

  void searchOrders() {}

  void reviewOrder() {
    Get.toNamed('/purchaseDetail');
  }

  void buyAgain() {}
}
