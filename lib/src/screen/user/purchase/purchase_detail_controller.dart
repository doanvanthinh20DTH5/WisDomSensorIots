import 'package:get/get.dart';

class PurchaseDetailController extends GetxController {
  var deliveryAddress = 'Nguyễn Cao Danh\n(+84)329438657\nTăng Nhơn Phú A, Thành phố Thủ Đức'.obs;

  void updateAddress(String newAddress) {
    deliveryAddress.value = newAddress;
  }
}
