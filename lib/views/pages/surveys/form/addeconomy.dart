import 'package:flutter/material.dart';
import 'package:meropalika/utils/textstyle.dart';

import '../../../../controllers/basic_data_controller.dart';
import '../../../../utils/colors.dart';
import '../../../widgets/basicpage.dart';
import '../../../widgets/dropdown.dart';
import '../../../widgets/tablefeilds.dart';

class SurveyEconomy extends StatelessWidget {
  const SurveyEconomy({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController controller = TextEditingController(text: '0');
    BasicDataController basicData = BasicDataController.to;
    return BasicPage(
      title: 'आर्थिक अवस्था विवरण',
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
                          items: basicData.houseOwnersList,
                          onChanged: (value) {
                            // var v = basicData.wardModel.firstWhere(
                            //     (model) => model.wardNo == int.parse(value));
                            // user.wardId = v.id;
                          },
                        ),
                        CustomDropdown(
                          title: "तपाईको घर भाडामा दिनु भएको छ ? *",
                          items: const ['छ', 'छैन'],
                          onChanged: (value) {
                            // var v = basicData.wardModel.firstWhere(
                            //     (model) => model.wardNo == int.parse(value));
                            // user.wardId = v.id;
                          },
                        ),
                        CustomDropdown(
                          title: "तपाईले ॠण लिएको भएको छ ?*",
                          items: const ['छ', 'छैन'],
                          onChanged: (value) {
                            // var v = basicData.wardModel.firstWhere(
                            //     (model) => model.wardNo == int.parse(value));
                            // user.wardId = v.id;
                          },
                        ),
                        CustomDropdown(
                          title: "औसत मासिक पारिवारिक आम्दानी (हजारमा) *",
                          items: basicData.averageIncomeList,
                          onChanged: (value) {
                            // var v = basicData.wardModel.firstWhere(
                            //     (model) => model.wardNo == int.parse(value));
                            // user.wardId = v.id;
                          },
                        ),
                        CustomDropdown(
                          title: "खाधानन् पर्याप्तताको अवस्था कस्तो छ ? *",
                          items: const ['छ', 'छैन'],
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
                            'शिप तालिम ',
                            'पुरुष',
                            'महिला',
                            'तेश्रो लिंग'
                          ],
                          tableFeildList: const [
                            "कृषि",
                            "पशु जेटीए",
                            "विद्युत जडान",
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
