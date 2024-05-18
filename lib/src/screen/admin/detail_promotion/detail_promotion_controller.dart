import 'package:get/get.dart';

class DetailPromotionController extends GetxController {
  var name = 'Sale off 50%'.obs;
  var description = 'Giảm giá 50% cho các đơn hàng từ 1000'.obs;
  var code = '241241'.obs;
  var startDate = '02/02/2024'.obs;
  var endDate = '20/02/2024'.obs;
  var amount = 50.obs;
  var remaining = 40.obs;

  void editPromotion() {
    // Xử lý khi nhấn nút Edit
  }

  void deletePromotion() {
    // Xử lý khi nhấn nút Delete
  }
}
