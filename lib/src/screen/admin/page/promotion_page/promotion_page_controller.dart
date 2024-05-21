import 'package:get/get.dart';

import 'package:wisdomsensoriots/src/screen/admin/detail_promotion/detail_promotion_screen.dart';
import 'package:wisdomsensoriots/src/screen/admin/promotion_list/promotion_list_screen.dart';
import 'package:wisdomsensoriots/src/screen/admin/update_promotion/update_promotion_screen.dart';



class PromotionPageController extends GetxController {
  void navigateToDetailPromotion() {
    Get.to(DetailPromotionScreen());
  }

  void navigateToListPromotion() {
    Get.to(PromotionListScreen());
  }

  void navigateToUpdatePromotion() {
    Get.to(UpdatePromotionScreen());
  }
}
