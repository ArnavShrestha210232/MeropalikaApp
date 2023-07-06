import "dart:convert";
import "dart:developer";
import "dart:io" as io;
import "package:dio/dio.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:image_picker/image_picker.dart";
import "package:meropalika/models/user_model.dart";
import "package:meropalika/utils/snackbar.dart";

import "../../utils/constants.dart";
import "../state_controller.dart";

class UsersController extends GetxController {
  String? profilePicture;
  bool updating = false;
  @override
  void onInit() {
    getUsers();
    super.onInit();
  }

  var dio = Dio();
  var box = StateController.to.box;

  TextEditingController firstName = TextEditingController();
  TextEditingController middleName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  int? provinceId;
  int? districtId;
  int? localLevelId;
  int? wardId;
  String? userType;
  String? provinceName;
  String? districtName;
  String? localLevelName;
  List<UserModel> userModel = <UserModel>[].obs;

  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile != null) {
      final bytes = io.File(pickedFile.path).readAsBytesSync();

      profilePicture = base64Encode(bytes);

      log(profilePicture!.substring(0, 100));
    } else {
      errorSnackbar('Failed to select image');
    }
    update();
  }

  Future<void> getUsers() async {
    var token = box.get("token");

    try {
      var response = await dio.get("$baseUrl/api/User",
          options: Options(headers: {
            "Accept": "application/json",
            "Authorization": "Bearer $token"
          }));

      if (response.statusCode == 200) {
        userModel = (response.data as List)
            .map((json) => UserModel.fromJson(json))
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

  Future<void> sendUser() async {
    if (profilePicture == null ||
        firstName.text.isEmpty ||
        lastName.text.isEmpty ||
        phone.text.isEmpty ||
        address.text.isEmpty ||
        email.text.isEmpty ||
        password.text.isEmpty ||
        confirmPassword.text.isEmpty ||
        provinceId == null ||
        districtId == null ||
        localLevelId == null ||
        wardId == null ||
        userType == null ||
        provinceName == null ||
        districtName == null ||
        localLevelName == null) {
      errorSnackbar('आवश्यक फिल्ड भरिएको छैन!');
    } else {
      var token = box.get("token");

      try {
        await dio.post(
          "$baseUrl/api/User",
          options: Options(headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token"
          }),
          data: {
            "FirstName": firstName.text.trim(),
            "PhoneNo": phone.text.trim(),
            "Email": email.text.trim(),
            "StateId": provinceId,
            "DistrictId": districtId,
            "LocalLevel": localLevelId,
            "Address": address.text.trim(),
            "Password": password.text.trim(),
            "Id": 0,
            "MiddleName": middleName.text.trim(),
            "LastName": lastName.text.trim(),
            "WardId": wardId,
            "Photo": profilePicture,
            "StateName": provinceName,
            "DistrictName": districtName,
            "LocalLevelName": localLevelName,
            "ConfirmPassword": confirmPassword.text.trim(),
            "RoleName": userType
          },
        ).then((val) {
          getUsers();
          Get.back();
          if (val.statusCode == 200 || val.statusCode == 204) {
            clearData();
            successSnackbar('User Added Sucessfully');
          }
        }).onError((error, stackTrace) => errorSnackbar(error.toString()));
      } catch (e) {
        errorSnackbar(e.toString());
      }
    }
    update();
  }

  Future<void> deleteUseer(id) async {
    var token = box.get("token");
    try {
      await dio
          .delete("$baseUrl/api/User/$id",
              options: Options(headers: {
                "Accept": "application/json",
                "Authorization": "Bearer $token"
              }))
          .then((val) {
        getUsers();
        if (val.statusCode == 200 || val.statusCode == 204) {
          successSnackbar('User Deleted Sucessfully');
        }
      }).onError((error, stackTrace) => errorSnackbar(error.toString()));
    } catch (e) {
      errorSnackbar(e.toString());
    }

    update();
  }

  Future<void> updateUserData(id) async {
    var token = box.get("token");

    if (profilePicture == null ||
        firstName.text.isEmpty ||
        lastName.text.isEmpty ||
        phone.text.isEmpty ||
        address.text.isEmpty ||
        email.text.isEmpty ||
        password.text.isEmpty ||
        confirmPassword.text.isEmpty ||
        provinceId == null ||
        districtId == null ||
        localLevelId == null ||
        wardId == null ||
        userType == null ||
        provinceName == null ||
        districtName == null ||
        localLevelName == null) {
      errorSnackbar('आवश्यक फिल्ड भरिएको छैन!');
    } else {
      try {
        await dio.put(
          "$baseUrl/api/User/$id",
          options: Options(headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token"
          }),
          data: {
            "FirstName": firstName.text.trim(),
            "PhoneNo": phone.text.trim(),
            "Email": email.text.trim(),
            "StateId": provinceId,
            "DistrictId": districtId,
            "LocalLevel": localLevelId,
            "Address": address.text.trim(),
            "Password": password.text.trim(),
            "MiddleName": middleName.text.trim(),
            "LastName": lastName.text.trim(),
            "WardId": wardId,
            "Id": id,
            "Photo": profilePicture,
            "StateName": provinceName,
            "DistrictName": districtName,
            "LocalLevelName": localLevelName,
            "ConfirmPassword": confirmPassword.text.trim(),
            "RoleName": userType
          },
        ).then((val) {
          getUsers();
          Get.back();
          if (val.statusCode == 200 || val.statusCode == 204) {
            clearData();
            successSnackbar('User Data Sucessfully Updted');
          }
        }).onError((error, stackTrace) => errorSnackbar(error.toString()));
      } catch (e) {
        errorSnackbar(e.toString());
      }
    }
    update();
  }

  updateUser(UserModel um) {
    profilePicture = um.photo;
    firstName.text = um.firstName!;
    middleName.text = um.middleName!;
    lastName.text = um.lastName!;
    phone.text = um.phoneNo!;
    address.text = um.address!;
    email.text = um.email!;

    provinceId = um.stateId;
    districtId = um.districtId;
    localLevelId = um.localLevel;
    wardId = um.wardId;

    provinceName = um.stateName;
    districtName = um.districtName;
    localLevelName = um.localLevelName;
    updating = true;
    update();
  }

  clearData() {
    profilePicture = null;
    firstName.text = '';
    middleName.text = '';
    lastName.text = '';
    phone.text = '';
    address.text = '';
    email.text = '';
    password.text = '';
    confirmPassword.text = '';
    provinceId = null;
    districtId = null;
    localLevelId = null;
    wardId = null;
    userType = null;
    provinceName = null;
    districtName = null;
    localLevelName = null;
    updating = false;

    update();
  }
}
