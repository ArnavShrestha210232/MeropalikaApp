import "dart:developer";

import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:hive_flutter/hive_flutter.dart";
import "package:meropalika/utils/colors.dart";
import "package:dio/dio.dart";

class StateController extends GetxController {
  static StateController to = Get.find();

  Dio dio = Dio();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  var box = Hive.box("meropalika");

  @override
  void onInit() {
    userLogin();
    Future.delayed(const Duration(seconds: 4))
        .then((value) => Get.offAllNamed("/home"));

    super.onInit();
  }

  void checkUser() {}
  Future<void> userLogin() async {
    try {
      var response = await dio.post(
        "http://meropalikaprofileapi.meropalika.com/api/token",
        data: {
          "grant_type": "password",
          "username": "superadmin@gmail.com",
          "password": "Softech@123",
        },
        options: Options(
          contentType: Headers.formUrlEncodedContentType,
        ),
      );

      // Handle the response
      if (response.statusCode == 200) {
        // Request was successful

        //log(response.data["access_token"]);

        String token = response.data["access_token"];
        box.put("token", token);
        update();
      } else {
        // Request failed
        log("Error");
        log(response.data);
      }
    } catch (e) {
      log("Exception caught: $e");
    }
  }

  void userRegister() {}
  void userLogout() {}
  loader() {
    Get.dialog(
      const Center(
        child: SizedBox(
          width: 30,
          height: 30,
          child: CircularProgressIndicator(
            strokeWidth: 1,
            color: kPrimary,
          ),
        ),
      ),
      barrierColor: kWhite.withOpacity(0.4),
      barrierDismissible: false,
    );
  }
}
