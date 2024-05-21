import 'package:get/get.dart';

class UpdatePromotionController extends GetxController {
  var name = ''.obs;
  var description = ''.obs;
  var code = ''.obs;
  var startDate = DateTime.now().obs;
  var endDate = DateTime.now().obs;
  var limit = 0.obs;
  var amount = 0.obs;

  void UpdatePromotion() {
  }
}
