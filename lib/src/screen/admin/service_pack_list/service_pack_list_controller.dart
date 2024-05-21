import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/admin/add_service_package/add_service_package_screen.dart';

class ServicePackListController extends GetxController {
  var promotions = <String>[
    'Car sensor package',
    'Fire alarm sensor package',
  ];
  void goToAddServicePackageScreen() {
    Get.to(AddServicePackageScreen());
  }
}
