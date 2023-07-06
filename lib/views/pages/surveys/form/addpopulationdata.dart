import 'package:flutter/material.dart';

import '../../../../controllers/basic_data_controller.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/textstyle.dart';
import '../../../widgets/basicpage.dart';
import '../../../widgets/dropdown.dart';
import '../../../widgets/tablefeilds.dart';

class SurveyPopulation extends StatelessWidget {
  const SurveyPopulation({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController controller = TextEditingController(text: '0');
    BasicDataController basicData = BasicDataController.to;
    return BasicPage(
      title: 'जनसंख्या विवरण ',
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
                          items: basicData.houseOwnersList,
                          onChanged: (value) {
                            // var v = basicData.wardModel.firstWhere(
                            //     (model) => model.wardNo == int.parse(value));
                            // user.wardId = v.id;
                          },
                        ),
                        CustomDropdown(
                          title: "धर्म: *",
                          items: basicData.religionList,
                          onChanged: (value) {
                            // var v = basicData.wardModel.firstWhere(
                            //     (model) => model.wardNo == int.parse(value));
                            // user.wardId = v.id;
                          },
                        ),
                        CustomDropdown(
                          title: "मातृभाषा: *",
                          items: basicData.motherTongueList,
                          onChanged: (value) {
                            // var v = basicData.wardModel.firstWhere(
                            //     (model) => model.wardNo == int.parse(value));
                            // user.wardId = v.id;
                          },
                        ),
                        CustomDropdown(
                          title:
                              "तपाईले कुनै किसिमको व्यापार / ब्यबसाय गर्नु भएको छ ? *",
                          items: const ['छ', 'छैन'],
                          onChanged: (value) {
                            // var v = basicData.wardModel.firstWhere(
                            //     (model) => model.wardNo == int.parse(value));
                            // user.wardId = v.id;
                          },
                        ),
                        CustomDropdown(
                          title: "तपाई विवाहित हुनुहुन्छ कि के हो? *",
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
                            'उमेर समुह :',
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                        ),
                        TableFormFeild(
                          headings: const [
                            'उमेर समूह',
                            'पुरुष',
                            'महिला',
                            'तेश्रो लिंग'
                          ],
                          tableFeildList: const [
                            "०-४ बर्ष सम्म ",
                            "५-९ बर्ष सम्म ",
                            "१०-१४ बर्ष सम्म ",
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
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          child: const Text(
                            'जातजाती विवरण :',
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                        ),
                        TableFormFeild(
                          headings: const [
                            'उमेर समूह',
                            'पुरुष',
                            'महिला',
                            'तेश्रो लिंग'
                          ],
                          tableFeildList: const [
                            "ब्राह्मण",
                            "क्षेत्री ",
                            "नेवार",
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
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          child: const Text(
                            'पेशा सम्बन्धि विवरण :',
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                        ),
                        TableFormFeild(
                          headings: const [
                            'उमेर समूह',
                            'पुरुष',
                            'महिला',
                            'तेश्रो लिंग'
                          ],
                          tableFeildList: const [
                            "कृषि तथा पशुपालन ",
                            "व्यापार",
                            "सरकारी नोकरी ",
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
