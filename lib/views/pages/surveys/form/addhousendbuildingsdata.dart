import 'package:flutter/material.dart';
import 'package:meropalika/views/widgets/basicpage.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/textstyle.dart';
import '../../../widgets/dropdown.dart';

class SurveyHouseAndBuildings extends StatelessWidget {
  const SurveyHouseAndBuildings({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return BasicPage(
      title: 'आवास तथा भवन सम्बन्धी विवरण',
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
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
                        CustomDropdown(
                          title: "घरमुलीको नाम: *",
                          items: const ['a', 'b'],
                          onChanged: (value) {
                            // var v = basicData.wardModel.firstWhere(
                            //     (model) => model.wardNo == int.parse(value));
                            // user.wardId = v.id;
                          },
                        ),
                        CustomDropdown(
                          title: "तपाईको घर कति तल्लाको छ ? *",
                          items: const ['a', 'b'],
                          onChanged: (value) {
                            // var v = basicData.wardModel.firstWhere(
                            //     (model) => model.wardNo == int.parse(value));
                            // user.wardId = v.id;
                          },
                        ),
                        CustomDropdown(
                          title: "घर नक्सा विवरण *",
                          items: const ['a', 'b'],
                          onChanged: (value) {
                            // var v = basicData.wardModel.firstWhere(
                            //     (model) => model.wardNo == int.parse(value));
                            // user.wardId = v.id;
                          },
                        ),
                        CustomDropdown(
                          title: "घरको स्वामित्व *",
                          items: const ['a', 'b'],
                          onChanged: (value) {
                            // var v = basicData.wardModel.firstWhere(
                            //     (model) => model.wardNo == int.parse(value));
                            // user.wardId = v.id;
                          },
                        ),
                        CustomDropdown(
                          title: "तपाईको घरको छानो के हो ? *",
                          items: const ['a', 'b'],
                          onChanged: (value) {
                            // var v = basicData.wardModel.firstWhere(
                            //     (model) => model.wardNo == int.parse(value));
                            // user.wardId = v.id;
                          },
                        ),
                        MaterialButton(
                          color: kPrimary,
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              // if (user.password.text !=
                              //     user.confirmPassword.text) {
                              //   errorSnackbar("Password Doesnot Match");
                              // } else {
                              //   user.sendUser();
                              // }
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
        ),
      ),
    );
  }
}
