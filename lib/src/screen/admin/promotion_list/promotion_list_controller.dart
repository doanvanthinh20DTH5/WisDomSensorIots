import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/admin/add_promotion/add_promotion_screen.dart';

class PromotionListController extends GetxController {
  var promotions = <String>[
    '50% sale off for package',
    '24 sales 4 package',
  ];
  void goToAddPromotionScreen() {
    Get.to(AddPromotionScreen());
  }
}
