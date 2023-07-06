import 'package:flutter/material.dart';
import 'package:meropalika/utils/textstyle.dart';

import '../../../../utils/colors.dart';
import '../../../widgets/basicpage.dart';
import '../../../widgets/dropdown.dart';

class SurveyDrinkingWater extends StatelessWidget {
  const SurveyDrinkingWater({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return BasicPage(
      title: 'खाने पानी तथा सरसफाई सम्बन्धी विवरण',
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
                          title: "तपाईको परिवारको खानेपानीको स्रोत कुन हो ? *",
                          items: const ['a', 'b'],
                          onChanged: (value) {
                            // var v = basicData.wardModel.firstWhere(
                            //     (model) => model.wardNo == int.parse(value));
                            // user.wardId = v.id;
                          },
                        ),
                        CustomDropdown(
                          title:
                              "तपाईको घरमा पकाउन प्रयोग हुने इन्धन कुन हो ? *",
                          items: const ['a', 'b'],
                          onChanged: (value) {
                            // var v = basicData.wardModel.firstWhere(
                            //     (model) => model.wardNo == int.parse(value));
                            // user.wardId = v.id;
                          },
                        ),
                        CustomDropdown(
                          title:
                              "तपाईको घरमा कस्तो प्रकारको चुल्हो प्रयोग गर्नुहुन्छ ? *",
                          items: const ['a', 'b'],
                          onChanged: (value) {
                            // var v = basicData.wardModel.firstWhere(
                            //     (model) => model.wardNo == int.parse(value));
                            // user.wardId = v.id;
                          },
                        ),
                        CustomDropdown(
                          title:
                              "तपाईको घरबाट निस्केको फोहोर मैला कहाँ / कसरी ब्यबस्थापन गर्नुहुन्छ ? *",
                          items: const ['a', 'b'],
                          onChanged: (value) {
                            // var v = basicData.wardModel.firstWhere(
                            //     (model) => model.wardNo == int.parse(value));
                            // user.wardId = v.id;
                          },
                        ),
                        CustomDropdown(
                          title: "शौचालय *",
                          items: const ['a', 'b'],
                          onChanged: (value) {
                            // var v = basicData.wardModel.firstWhere(
                            //     (model) => model.wardNo == int.parse(value));
                            // user.wardId = v.id;
                          },
                        ),
                        CustomDropdown(
                          title: "बिजुलीको स्रोत *",
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
