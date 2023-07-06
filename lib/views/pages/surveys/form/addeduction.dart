import 'package:flutter/material.dart';
import 'package:meropalika/utils/textstyle.dart';

import '../../../../utils/colors.dart';
import '../../../widgets/basicpage.dart';
import '../../../widgets/dropdown.dart';
import '../../../widgets/tablefeilds.dart';

class SurveyEducation extends StatelessWidget {
  const SurveyEducation({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController controller = TextEditingController(text: '0');
    return BasicPage(
      title: 'शैक्षिक तथा मानव संसाधन विकास ',
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
                          title: "घरमुलीको नाम: *",
                          items: const ['a', 'b'],
                          onChanged: (value) {
                            // var v = basicData.wardModel.firstWhere(
                            //     (model) => model.wardNo == int.parse(value));
                            // user.wardId = v.id;
                          },
                        ),
                        CustomDropdown(
                          title: "विद्यालय जान लाग्ने समय आधारभूततह आधारमा *",
                          items: const ['a', 'b'],
                          onChanged: (value) {
                            // var v = basicData.wardModel.firstWhere(
                            //     (model) => model.wardNo == int.parse(value));
                            // user.wardId = v.id;
                          },
                        ),
                        CustomDropdown(
                          title: "विद्यालय जान लाग्ने समय मा.वि. तह आधारमा *",
                          items: const ['a', 'b'],
                          onChanged: (value) {
                            // var v = basicData.wardModel.firstWhere(
                            //     (model) => model.wardNo == int.parse(value));
                            // user.wardId = v.id;
                          },
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          child: const Text(
                            'शिप तालिम :',
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                        ),
                        TableFormFeild(
                          headings: const [
                            'स्थिति',
                            'पुरुष',
                            'महिला',
                            'तेश्रो लिंग'
                          ],
                          tableFeildList: const [
                            "पढन नसक्ने",
                            "लेख्न नसक्ने",
                            "पढन लेख्न नसक्ने",
                          ],
                          controllers: [
                            [
                              controller,
                              controller,
                              controller,
                            ],
                            [
                              controller,
                              controller,
                              controller,
                            ],
                            [
                              controller,
                              controller,
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
