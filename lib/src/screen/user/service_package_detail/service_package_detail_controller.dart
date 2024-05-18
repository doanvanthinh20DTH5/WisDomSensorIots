import 'package:get/get.dart';

class ServicePackageDetailController extends GetxController {
  RxString title = ''.obs;
  RxString description = ''.obs;

  void updatePackageDetails() {
    title.value = 'Car Sensor Package';
    description.value = 'Automotive sensors are devices used to sense and collect information.';
  }

  @override
  void onInit() {
    updatePackageDetails();
    super.onInit();
  }
}
