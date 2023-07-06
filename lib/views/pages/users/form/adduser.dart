import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:image_picker/image_picker.dart";
import "package:meropalika/controllers/basic_data_controller.dart";
import "package:meropalika/controllers/users/users_controller.dart";
import "package:meropalika/utils/colors.dart";
import "package:meropalika/utils/textstyle.dart";
import "package:meropalika/views/widgets/basicpage.dart";

import "../../../../utils/snackbar.dart";
import "../../../widgets/dropdown.dart";
import "../../../widgets/formfeild.dart";

class AddNewUser extends StatelessWidget {
  const AddNewUser({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    BasicDataController basicData = BasicDataController.to;

    return BasicPage(
      title: "प्रयोगकर्ता बनाउनुहोस",
      child: GetBuilder<UsersController>(builder: (user) {
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: (!user.updating)
              ? Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      width: double.infinity,
                      alignment: Alignment.center,
                      color: kGreen,
                      child: const Text(
                        "* द्वारा निहित फिल्डहरू आवश्यक छन्",
                        textScaleFactor: 1.2,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Form(
                            key: formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                FormFeildWidget(
                                  text: "पहिलो नाम *",
                                  textInputAction: TextInputAction.next,
                                  textInputType: TextInputType.name,
                                  require: true,
                                  validationError: "पहिलो नाम महत्त्वपूर्ण छ",
                                  controller: user.firstName,
                                ),
                                FormFeildWidget(
                                  text: "बीचको नाम ",
                                  textInputAction: TextInputAction.next,
                                  textInputType: TextInputType.name,
                                  require: false,
                                  controller: user.middleName,
                                ),
                                FormFeildWidget(
                                  text: "अन्तिम नाम *",
                                  textInputAction: TextInputAction.next,
                                  textInputType: TextInputType.name,
                                  require: true,
                                  validationError: "अन्तिम नाम महत्त्वपूर्ण छ",
                                  controller: user.lastName,
                                ),
                                FormFeildWidget(
                                  text: "संपर्क न. *",
                                  textInputAction: TextInputAction.next,
                                  textInputType: TextInputType.number,
                                  require: true,
                                  validationError: "संपर्क न. महत्त्वपूर्ण छ",
                                  controller: user.phone,
                                ),
                                CustomDropdown(
                                  title: "प्रदेश *",
                                  items: basicData.provinceList,
                                  onChanged: (value) {
                                    var v = basicData.provinceModel.firstWhere(
                                        (model) => model.name == value);
                                    user.provinceId = v.id;
                                    user.provinceName = value;
                                  },
                                ),
                                CustomDropdown(
                                  title: "जिल्ला *",
                                  items: basicData.districtList,
                                  onChanged: (value) {
                                    var v = basicData.districtModel.firstWhere(
                                        (model) => model.name == value);
                                    user.districtId = v.id;
                                    user.districtName = value;
                                  },
                                ),
                                CustomDropdown(
                                  title: "न.पा/ग.पा *",
                                  items: basicData.localLevelList,
                                  onChanged: (value) {
                                    var v = basicData.localLevelModel
                                        .firstWhere(
                                            (model) => model.name == value);
                                    user.localLevelId = v.id;
                                    user.localLevelName = value;
                                  },
                                ),
                                CustomDropdown(
                                  title: "वडा.न.",
                                  items: basicData.wardList,
                                  onChanged: (value) {
                                    var v = basicData.wardModel.firstWhere(
                                        (model) =>
                                            model.wardNo == int.parse(value));
                                    user.wardId = v.id;
                                  },
                                ),
                                FormFeildWidget(
                                  text: "ठेगाना *",
                                  textInputAction: TextInputAction.next,
                                  textInputType: TextInputType.name,
                                  require: true,
                                  validationError: "अन्तिम नाम महत्त्वपूर्ण छ",
                                  controller: user.address,
                                ),
                                user.profilePicture == null
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          MaterialButton(
                                            color: kPrimary,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            onPressed: () => user
                                                .pickImage(ImageSource.gallery),
                                            child: const Text(
                                              "ग्यालरीबाट छवि",
                                              style: TextStyle(
                                                color: kWhite,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                            child: Text("वा"),
                                          ),
                                          MaterialButton(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            color: kPrimary,
                                            onPressed: () => user
                                                .pickImage(ImageSource.camera),
                                            child: const Text(
                                              "क्यामेराबाट छवि",
                                              style: TextStyle(
                                                color: kWhite,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    : GestureDetector(
                                        onTap: () {
                                          user.profilePicture = null;
                                          user.update();
                                        },
                                        child: Container(
                                          height: 45,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: kPrimary,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          alignment: Alignment.center,
                                          child: const Text(
                                            "छवि चयन गरिएको छ! \n छवि हटाउनुहोस् ",
                                            style: TextStyle(
                                              color: kWhite,
                                            ),
                                          ),
                                        ),
                                      ),
                                const Divider(),
                                const Text(
                                  "लगइन विवरण :-",
                                  textScaleFactor: 1.3,
                                ),
                                const Divider(),
                                FormFeildWidget(
                                  text: "ईमेल *",
                                  textInputAction: TextInputAction.next,
                                  textInputType: TextInputType.name,
                                  require: true,
                                  validationError: "ईमेल महत्त्वपूर्ण छ",
                                  controller: user.email,
                                ),
                                FormFeildWidget(
                                  text: "पासवर्ड *",
                                  obscure: true,
                                  textInputAction: TextInputAction.next,
                                  textInputType: TextInputType.name,
                                  require: true,
                                  validationError: "पासवर्ड महत्त्वपूर्ण छ",
                                  controller: user.password,
                                ),
                                FormFeildWidget(
                                  text: "पासवर्ड सुनिश्चित गर्नुहोस *",
                                  obscure: true,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.name,
                                  require: true,
                                  validationError:
                                      "पासवर्ड सुनिश्चित महत्त्वपूर्ण छ",
                                  controller: user.confirmPassword,
                                ),
                                CustomDropdown(
                                  title: "भूमिका *",
                                  items: const [
                                    "SuperAdmin",
                                    "User",
                                    "Admin",
                                  ],
                                  onChanged: (value) {
                                    user.userType = value;
                                  },
                                ),
                                MaterialButton(
                                  color: kPrimary,
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      if (user.password.text !=
                                          user.confirmPassword.text) {
                                        errorSnackbar("Password Doesnot Match");
                                      } else {
                                        user.sendUser();
                                      }
                                    }
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 8.0,
                                        ),
                                        child: Text(
                                          "पेश गर्नुहोस्",
                                          style: button(
                                            color: kWhite,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Container(
                  margin: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        width: double.infinity,
                        alignment: Alignment.center,
                        color: kGreen,
                        child: const Text(
                          "* तपाइँ प्रयोगकर्ता डेटा अपडेट गर्दै हुनुहुन्थ्यो!",
                          textScaleFactor: 1.2,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        color: kPrimary,
                        onPressed: () {
                          user.clearData();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                              ),
                              child: Text(
                                "रद्द गर्नुहोस् र नयाँ थप्नुहोस्",
                                style: button(
                                  color: kWhite,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
        );
      }),
    );
  }
}
