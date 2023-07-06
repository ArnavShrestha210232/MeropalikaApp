import "dart:developer";

import "package:dio/dio.dart";
import "package:get/get.dart";
import "package:meropalika/controllers/state_controller.dart";
import "package:meropalika/models/basic_data/average_income_model.dart";
import "package:meropalika/models/basic_data/district_model.dart";
import "package:meropalika/models/basic_data/local_level_model.dart";
import "package:meropalika/models/basic_data/mothertongue_model.dart";
import "package:meropalika/models/basic_data/province_model.dart";
import "package:meropalika/models/basic_data/religion_model.dart";
import "package:meropalika/models/basic_data/ward_model.dart";
import "package:meropalika/models/houseowner_model.dart";

import "../models/basic_data/earthquake_model.dart";
import "../models/basic_data/house_type_model.dart";
import "../models/basic_data/skills_model.dart";
import "../utils/constants.dart";

class BasicDataController extends GetxController {
  static BasicDataController to = Get.find();

  @override
  void onInit() {
    allBasicData();
    super.onInit();
  }

  var box = StateController.to.box;

  var dio = Dio();

  List<WardModel> wardModel = <WardModel>[].obs;
  List<DistrictModel> districtModel = <DistrictModel>[].obs;
  List<ProvinceModel> provinceModel = <ProvinceModel>[].obs;
  List<LocalLevelModel> localLevelModel = <LocalLevelModel>[].obs;
  List<HouseTypeModel> houseTypeModel = <HouseTypeModel>[].obs;
  List<SkillsModel> skillsTypesModel = <SkillsModel>[].obs;
  List<EarthquakleEffectedModel> earthquakeEffectedTypesModel =
      <EarthquakleEffectedModel>[].obs;
  List<HouseOwnerModel> houseOwnerModel = <HouseOwnerModel>[].obs;
  List<ReligionModel> religionModel = <ReligionModel>[].obs;
  List<MotherTongueModel> motherTongueModel = <MotherTongueModel>[].obs;
  List<AverageIncomeModel> averageIncomeModel = <AverageIncomeModel>[].obs;

  List<String> averageIncomeList = [];
  List<String> motherTongueList = [];
  List<String> religionList = [];
  List<String> houseOwnersList = [];
  List<String> earthquakeEffectedTypeList = [];
  List<String> skillsTypeList = [];
  List<String> houseTypeList = [];
  List<String> wardList = [];
  List<String> districtList = [];
  List<String> provinceList = [];
  List<String> localLevelList = [];

  allBasicData() async {
    await getDistricts();
    await getWards();
    await getProvince();
    await getLocalLevel();
    await getHouseTypes();
    await getSkills();
    await earthquakeEffectedLiving();
    await getHouseOwnersDetals();
    await getReligion();
    await getMotherTongueLanguage();
    await getAverageIncome();
  }

//Districts

  Future<void> getDistricts() async {
    var token = box.get("token");
    log("Districts");
    try {
      var response = await dio.get("$baseUrl/api/District",
          options: Options(headers: {
            "Accept": "application/json",
            "Authorization": "Bearer $token"
          }));

      if (response.statusCode == 200) {
        districtModel = (response.data as List)
            .map((json) => DistrictModel.fromJson(json))
            .toList();

        districtList =
            districtModel.map((district) => "${district.name}").toList();

        //log(districtList.toString());
        //log(response.data.toString());
      } else {
        log(response.statusMessage!);
      }
    } catch (error) {
      log("Error: $error");
    }
  }

  Future<void> getLocalLevel() async {
    var token = box.get("token");

    try {
      var response = await dio.get("$baseUrl/api/LocalLevel",
          options: Options(headers: {
            "Accept": "application/json",
            "Authorization": "Bearer $token"
          }));

      if (response.statusCode == 200) {
        localLevelModel = (response.data as List)
            .map((json) => LocalLevelModel.fromJson(json))
            .toList();

        localLevelList =
            localLevelModel.map((local) => "${local.name}").toList();
        // log(response.data.toString());
      } else {
        log(response.statusMessage!);
      }
    } catch (error) {
      log("Error: $error");
    }
    update();
  }

  Future<void> getProvince() async {
    var token = box.get("token");

    try {
      var response = await dio.get("$baseUrl/api/State",
          options: Options(headers: {
            "Accept": "application/json",
            "Authorization": "Bearer $token"
          }));

      if (response.statusCode == 200) {
        provinceModel = (response.data as List)
            .map((json) => ProvinceModel.fromJson(json))
            .toList();

        provinceList =
            provinceModel.map((province) => "${province.name}").toList();

        // log(response.data.toString());
      } else {
        log(response.statusMessage!);
      }
    } catch (error) {
      log("Error: $error");
    }
    update();
  }

  Future<void> getWards() async {
    var token = box.get("token");

    try {
      var response = await dio.get("$baseUrl/api/Ward",
          options: Options(headers: {
            "Accept": "application/json",
            "Authorization": "Bearer $token"
          }));

      if (response.statusCode == 200) {
        wardModel = (response.data as List)
            .map((json) => WardModel.fromJson(json))
            .toList();

        wardList = wardModel.map((ward) => "${ward.wardNo}").toList();
        // log(wards[0].wardNo.toString());
        //log(response.data.toString());
      } else {
        log(response.statusMessage!);
      }
    } catch (error) {
      log("Error: $error");
    }
    update();
  }

  Future<void> getHouseTypes() async {
    var token = box.get("token");

    try {
      var response = await dio.get("$baseUrl/api/common/GetAllHouseType",
          options: Options(headers: {
            "Accept": "application/json",
            "Authorization": "Bearer $token"
          }));

      if (response.statusCode == 200) {
        houseTypeModel = (response.data as List)
            .map((json) => HouseTypeModel.fromJson(json))
            .toList();

        houseTypeList = houseTypeModel.map((x) => "${x.name}").toList();
      } else {
        log(response.statusMessage!);
      }
    } catch (error) {
      log("Error: $error");
    }
    update();
  }

  Future<void> getSkills() async {
    var token = box.get("token");

    try {
      var response = await dio.get("$baseUrl/api/common/GetAllSkillTypes",
          options: Options(headers: {
            "Accept": "application/json",
            "Authorization": "Bearer $token"
          }));

      if (response.statusCode == 200) {
        skillsTypesModel = (response.data as List)
            .map((json) => SkillsModel.fromJson(json))
            .toList();

        skillsTypeList = skillsTypesModel.map((x) => "${x.name}").toList();
      } else {
        log(response.statusMessage!);
      }
    } catch (error) {
      log("Error: $error");
    }
    update();
  }

  Future<void> earthquakeEffectedLiving() async {
    var token = box.get("token");

    try {
      var response = await dio.get("$baseUrl/api/common/GetAllEarthquake2072",
          options: Options(headers: {
            "Accept": "application/json",
            "Authorization": "Bearer $token"
          }));

      if (response.statusCode == 200) {
        earthquakeEffectedTypesModel = (response.data as List)
            .map((json) => EarthquakleEffectedModel.fromJson(json))
            .toList();

        earthquakeEffectedTypeList =
            earthquakeEffectedTypesModel.map((x) => "${x.name}").toList();
      } else {
        log(response.statusMessage!);
      }
    } catch (error) {
      log("Error: $error");
    }
    update();
  }

  Future<void> getHouseOwnersDetals() async {
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

        houseOwnersList = houseOwnerModel.map((x) => "${x.name}").toList();
      } else {
        log(response.statusMessage!);
      }
    } catch (error) {
      log("Error: $error");
    }
    update();
  }

  Future<void> getReligion() async {
    var token = box.get("token");

    try {
      var response = await dio.get("$baseUrl/api/common/GetAllReligin",
          options: Options(headers: {
            "Accept": "application/json",
            "Authorization": "Bearer $token"
          }));

      if (response.statusCode == 200) {
        religionModel = (response.data as List)
            .map((json) => ReligionModel.fromJson(json))
            .toList();

        religionList = religionModel.map((x) => "${x.name}").toList();
      } else {
        log(response.statusMessage!);
      }
    } catch (error) {
      log("Error: $error");
    }
    update();
  }

  Future<void> getMotherTongueLanguage() async {
    var token = box.get("token");

    try {
      var response = await dio.get("$baseUrl/api/common/GetAllLanguage",
          options: Options(headers: {
            "Accept": "application/json",
            "Authorization": "Bearer $token"
          }));

      if (response.statusCode == 200) {
        motherTongueModel = (response.data as List)
            .map((json) => MotherTongueModel.fromJson(json))
            .toList();

        motherTongueList = motherTongueModel.map((x) => "${x.name}").toList();
      } else {
        log(response.statusMessage!);
      }
    } catch (error) {
      log("Error: $error");
    }
    update();
  }

  Future<void> getAverageIncome() async {
    var token = box.get("token");

    try {
      var response = await dio.get(
          "$baseUrl/api/common/GetAllAverageMonthlyIncomes",
          options: Options(headers: {
            "Accept": "application/json",
            "Authorization": "Bearer $token"
          }));

      if (response.statusCode == 200) {
        averageIncomeModel = (response.data as List)
            .map((json) => AverageIncomeModel.fromJson(json))
            .toList();

        averageIncomeList = averageIncomeModel.map((x) => "${x.name}").toList();
      } else {
        log(response.statusMessage!);
      }
    } catch (error) {
      log("Error: $error");
    }
    update();
  }
}
