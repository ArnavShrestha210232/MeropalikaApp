import 'package:flutter/material.dart';

import '../../../../controllers/basic_data_controller.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/textstyle.dart';
import '../../../widgets/basicpage.dart';
import '../../../widgets/dropdown.dart';
import '../../../widgets/tablefeilds.dart';

class SurveyInstitution extends StatelessWidget {
  const SurveyInstitution({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController controller = TextEditingController(text: '0');
    BasicDataController basicData = BasicDataController.to;
    return BasicPage(
      title: 'संस्थागत विवरण ',
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
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
                          title: "वडा.न.",
                          items: basicData.wardList,
                          onChanged: (value) {
                            // var v = basicData.wardModel.firstWhere(
                            //     (model) => model.wardNo == int.parse(value));
                            // user.wardId = v.id;
                          },
                        ),
                        TableFormFeild(
                          headings: const [
                            'क्षेत्रहरू ',
                            'प्रविष्टिहरू',
                          ],
                          tableFeildList: const [
                            "विद्यालय",
                            "प्राकृतिक स्रोतहरू",
                            "सरकारी कार्यालय",
                            "बैंक",
                            "सुरक्षा निकाय",
                            "हेल्थपोस्ट",
                            "वडा कार्यालय",
                            "सांस्कृतिक सम्पदा कार्यालय",
                            "उद्योगहरु"
                          ],
                          controllers: [
                            [
                              controller,
                            ],
                            [
                              controller,
                            ],
                            [
                              controller,
                            ],
                            [
                              controller,
                            ],
                            [
                              controller,
                            ],
                            [
                              controller,
                            ],
                            [
                              controller,
                            ],
                            [
                              controller,
                            ],
                            [
                              controller,
                            ],
                          ],
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
