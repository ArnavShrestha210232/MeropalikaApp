import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:meropalika/utils/colors.dart";

errorSnackbar(error) {
  Get.snackbar(
    "त्रुटि",
    error,
    colorText: kWhite,
    margin: const EdgeInsets.all(12),
    backgroundColor: kRed,
    borderRadius: 6,
    snackPosition: SnackPosition.BOTTOM,
  );
}

successSnackbar(message) {
  Get.snackbar(
    "सफलता",
    message,
    margin: const EdgeInsets.all(12),
    backgroundColor: kGreen,
    borderRadius: 6,
    snackPosition: SnackPosition.BOTTOM,
  );
}

loaderFunction() {
  Get.dialog(
    const Center(
      child: CircularProgressIndicator(
        color: kPrimary,
        strokeWidth: 2,
      ),
    ),
    barrierDismissible: false,
    barrierColor: kWhite.withOpacity(0.4),
  );
}
