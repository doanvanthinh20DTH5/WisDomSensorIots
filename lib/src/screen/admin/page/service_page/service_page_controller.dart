import 'package:get/get.dart';
import 'package:wisdomsensoriots/src/screen/admin/service_pack_detail/service_pack_detail_screen.dart';
import 'package:wisdomsensoriots/src/screen/admin/service_pack_list/service_pack_list_screen.dart';
import 'package:wisdomsensoriots/src/screen/admin/update_service_pack/update_service_pack_screen.dart';



class ServicePageController extends GetxController {
  void DetailServicePack() {
    Get.to(ServicePackDetailScreen());
  }

  void ListPackDetail() {
    Get.to(ServicePackListScreen());
  }

  void UpdateService() {
    Get.to(UpdateServicePackageScreen());
  }
}
