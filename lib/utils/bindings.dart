import "package:get/get.dart";
import "package:meropalika/controllers/system/system_controller.dart";

import "../controllers/basic_data_controller.dart";
import "../controllers/drawer_controller.dart";
import "../controllers/state_controller.dart";
import "../controllers/surveys/survey_controller.dart";

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(StateController());
    Get.put(CustomDrawerController());
    Get.put(BasicDataController());
    Get.put(SurveyController());
    Get.put(SystemController());
  }
}
