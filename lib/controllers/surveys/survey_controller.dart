import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:meropalika/models/houseowner_model.dart';
import 'package:meropalika/models/report_model.dart';

import '../../utils/constants.dart';
import '../state_controller.dart';

class SurveyController extends GetxController {
  @override
  void onInit() {
    getHouseOwners();
    super.onInit();
  }

  var dio = Dio();
  var box = StateController.to.box;
  List<HouseOwnerModel> houseOwnerModel = <HouseOwnerModel>[].obs;

  ReportModel reportModel = ReportModel();

  Future<void> getHouseOwners() async {
    var token = box.get("token");

    try {
      var response = await dio.get("$baseUrl/api/HouseOwnerDetails",
          options: Options(headers: {
            "Accept": "application/json",
            "Authorization": "Bearer $token"
          }));

      if (response.statusCode == 200) {
        houseOwnerModel = (response.data as List)
            .map((json) => HouseOwnerModel.fromJson(json))
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

  Future getHouseOwnersDeetails(id) async {
    var token = box.get("token");

    try {
      var response = await dio.get(
        "$baseUrl/api/Report/$id",
        options: Options(headers: {
          "Accept": "application/json",
          "Authorization": "Bearer $token",
        }),
      );

      if (response.statusCode == 200) {
        reportModel = ReportModel.fromJson(response.data);
        log(reportModel.id.toString());
      } else {
        log(response.statusMessage!);
      }
    } catch (error) {
      log("Error: $error");
    }
  }
}
