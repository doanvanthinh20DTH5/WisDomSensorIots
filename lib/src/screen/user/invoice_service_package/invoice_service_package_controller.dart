import 'package:get/get.dart';

class InvoiceServicePackageController extends GetxController {
  var fullName = 'Nguyễn Cao Danh'.obs;
  var phone = '0329438567'.obs;
  var email = 'doanthinh2503@gmail.com'.obs;
  var address = '93, Tăng Nhơn Phú A, TP. Thủ Đức'.obs;
  var serviceName = 'Car Sensor'.obs;
  var quantity = 1.obs;
  var startDate = '02/03/2024'.obs;
  var endDate = '02/09/2024'.obs;
  var totalServiceFee = '\$250'.obs;
  var totalEquipmentCost = '\$250'.obs;
  var shipFee = '\$10'.obs;
  var serviceDiscount = '\$0'.obs;
  var totalPayment = '\$260'.obs;

  void downloadInvoice() {
    print('Downloading invoice...');
  }

  @override
  void onInit() {
    super.onInit();
  }
}
