import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:meropalika/models/education_type_model.dart';

import '../../utils/constants.dart';
import '../state_controller.dart';

class SystemController extends GetxController {
  static SystemController to = Get.find();
  @override
  void onInit() {
    getEducation();
    super.onInit();
  }

  var dio = Dio();
  var box = StateController.to.box;

  List<EducationTypesModel> educationTypes = <EducationTypesModel>[].obs;

  Future<void> getEducation() async {
    var token = box.get("token");

    try {
      var response = await dio.get("$baseUrl/api/ShikshyaType",
          options: Options(headers: {
            "Accept": "application/json",
            "Authorization": "Bearer $token"
          }));

      if (response.statusCode == 200) {
        educationTypes = (response.data as List)
            .map((json) => EducationTypesModel.fromJson(json))
            .toList();

        //  log(response.data.toString());
      } else {
        log(response.statusMessage!);
      }
    } catch (error) {
      log("Error: $error");
    }
    update();
  }
}
