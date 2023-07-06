import 'package:flutter/material.dart';
import 'package:meropalika/utils/textstyle.dart';
import 'package:meropalika/views/widgets/basicpage.dart';

import '../../../../controllers/basic_data_controller.dart';
import '../../../../utils/colors.dart';
import '../../../widgets/dropdown.dart';
import '../../../widgets/formfeild.dart';
import '../../../widgets/tablefeilds.dart';

class SurveyHouseOwners extends StatelessWidget {
  const SurveyHouseOwners({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController controller = TextEditingController(text: '0');
    BasicDataController basicData = BasicDataController.to;
    return BasicPage(
      title: 'घरमुलीको विवरण',
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
                        FormFeildWidget(
                          text: "घरमुलीको नाम थर : *",
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.name,
                          require: true,
                          validationError: "पहिलो नाम महत्त्वपूर्ण छ",
                          controller: controller,
                        ),
                        CustomDropdown(
                          title: "घरमुली :",
                          items: const [
                            'बाबु',
                            'आमा',
                            'छोरी',
                            'छोरा/बुहारी',
                          ],
                          onChanged: (value) {
                            // var v = basicData.wardModel.firstWhere(
                            //     (model) => model.wardNo == int.parse(value));
                            // user.wardId = v.id;
                          },
                        ),
                        CustomDropdown(
                          title: "वडा.न.",
                          items: basicData.wardList,
                          onChanged: (value) {
                            // var v = basicData.wardModel.firstWhere(
                            //     (model) => model.wardNo == int.parse(value));
                            // user.wardId = v.id;
                          },
                        ),
                        FormFeildWidget(
                          text: "बस्ती / गाउ / टोलको नाम",
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.text,
                          require: true,
                          validationError: "आवश्यक छ",
                          controller: controller,
                        ),
                        FormFeildWidget(
                          text: "घर नं",
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.number,
                          require: true,
                          validationError: "आवश्यक छ",
                          controller: controller,
                        ),
                        FormFeildWidget(
                          text: "जम्मा परिवार संख्या",
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.number,
                          require: true,
                          validationError: "आवश्यक छ",
                          controller: controller,
                        ),
                        FormFeildWidget(
                          text: "(क) पुरुष संख्या",
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.number,
                          require: true,
                          validationError: "आवश्यक छ",
                          controller: controller,
                        ),
                        FormFeildWidget(
                          text: "(ख) महिला संख्या",
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.number,
                          require: true,
                          validationError: "आवश्यक छ",
                          controller: controller,
                        ),
                        FormFeildWidget(
                          text: "(ग) तेस्रो लिंगी संख्या",
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.number,
                          require: true,
                          validationError: "आवश्यक छ",
                          controller: controller,
                        ),
                        FormFeildWidget(
                          text: "संगै बस्ने संख्या",
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.number,
                          require: true,
                          validationError: "आवश्यक छ",
                          controller: controller,
                        ),
                        FormFeildWidget(
                          text: "(क) पुरुष संख्या",
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.number,
                          require: true,
                          validationError: "आवश्यक छ",
                          controller: controller,
                        ),
                        FormFeildWidget(
                          text: "(ख) महिला संख्या",
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.number,
                          require: true,
                          validationError: "आवश्यक छ",
                          controller: controller,
                        ),
                        FormFeildWidget(
                          text: "(ग) तेस्रो लिंगी संख्या",
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.number,
                          require: true,
                          validationError: "आवश्यक छ",
                          controller: controller,
                        ),
                        FormFeildWidget(
                          text: "नपा बाहिर अन्य ठाउमा बस्नेको संख्या",
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.number,
                          require: true,
                          validationError: "आवश्यक छ",
                          controller: controller,
                        ),
                        FormFeildWidget(
                          text: "(क) पुरुष संख्या",
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.number,
                          require: true,
                          validationError: "आवश्यक छ",
                          controller: controller,
                        ),
                        FormFeildWidget(
                          text: "(ख) महिला संख्या",
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.number,
                          require: true,
                          validationError: "आवश्यक छ",
                          controller: controller,
                        ),
                        FormFeildWidget(
                          text: "(ग) तेस्रो लिंगी संख्या",
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.number,
                          require: true,
                          validationError: "आवश्यक छ",
                          controller: controller,
                        ),
                        FormFeildWidget(
                          text: "विदेशमा बस्नेको संख्या",
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.number,
                          require: true,
                          validationError: "आवश्यक छ",
                          controller: controller,
                        ),
                        FormFeildWidget(
                          text: "(क) पुरुष संख्या",
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.number,
                          require: true,
                          validationError: "आवश्यक छ",
                          controller: controller,
                        ),
                        FormFeildWidget(
                          text: "(ख) महिला संख्या",
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.number,
                          require: true,
                          validationError: "आवश्यक छ",
                          controller: controller,
                        ),
                        FormFeildWidget(
                          text: "(ग) तेस्रो लिंगी संख्या",
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.number,
                          require: true,
                          validationError: "आवश्यक छ",
                          controller: controller,
                        ),
                        CustomDropdown(
                          title: "घरको प्रकार तथा किसिम :",
                          items: basicData.houseTypeList,
                          onChanged: (value) {
                            // var v = basicData.districtModel
                            //     .firstWhere((model) => model.name == value);
                            // user.districtId = v.id;
                            // user.districtName = value;
                          },
                        ),
                        CustomDropdown(
                          title: "तपाईको जग्गा भाडामा दिनु भएको छ ?",
                          items: const ['छ', 'छैन'],
                          onChanged: (value) {
                            // var v = basicData.districtModel
                            //     .firstWhere((model) => model.name == value);
                            // user.districtId = v.id;
                            // user.districtName = value;
                          },
                        ),
                        CustomDropdown(
                          title:
                              "तपाईको परिवारमा कमाउन सक्ने सिपयुक्त व्यक्ति बेरोजगार बसेको छ ?",
                          items: const ['छ', 'छैन'],
                          onChanged: (value) {
                            // var v = basicData.districtModel
                            //     .firstWhere((model) => model.name == value);
                            // user.districtId = v.id;
                            // user.districtName = value;
                          },
                        ),
                        CustomDropdown(
                          title:
                              "तपाईको परिवारको कस्तो किसिमको सिपयुक्त व्यक्तिहरु छन् ?",
                          items: basicData.skillsTypeList,
                          onChanged: (value) {
                            // var v = basicData.districtModel
                            //     .firstWhere((model) => model.name == value);
                            // user.districtId = v.id;
                            // user.districtName = value;
                          },
                        ),
                        FormFeildWidget(
                          text:
                              "१४. तपाइको परिवारका सदस्यहरुको नाममा जग्गा जमिन कति छ ? आना",
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.number,
                          require: true,
                          validationError: "आवश्यक छ",
                          controller: controller,
                        ),
                        FormFeildWidget(
                          text:
                              "१५. तपाइको परिवारका सदस्यहरुको नाममा जग्गा जमिन कति छ ? रोपनी",
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.number,
                          require: true,
                          validationError: "आवश्यक छ",
                          controller: controller,
                        ),
                        TableFormFeild(
                          title:
                              '१६. परिवारक सदस्य रोजगारीका लागि विदेश गएको छन् भने ?',
                          headings: const [
                            'गएको मुलुकको नाम',
                            'जम्मा',
                          ],
                          tableFeildList: const [' भारत *', 'खाडी *', 'अन्य *'],
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
                          ],
                        ),
                        TableFormFeild(
                          title:
                              '१७. परिवारक सदस्य रोजगारीका लागि विदेश गएको गएको अवधि (बर्षमा) ?',
                          headings: const [
                            'गएको मुलुकको नाम',
                            'जम्मा',
                          ],
                          tableFeildList: const [
                            "१ बर्ष भन्दा कम 	*",
                            "२ बर्ष भन्दा कम 	*",
                            "३ बर्ष भन्दा कम 	*",
                            "४ बर्ष भन्दा कम 	*",
                            "५ बर्ष भन्दा कम 	*",
                            "५ बर्ष भन्दा बढि 	*"
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
                          ],
                        ),
                        CustomDropdown(
                          title: "१८. बालबच्चालाई कुन स्कुलमा पढाउनु हुन्छ ?",
                          items: const ['निजि (बोडिंग)', 'सामुदायिक (सरकारी)'],
                          onChanged: (value) {
                            // var v = basicData.districtModel
                            //     .firstWhere((model) => model.name == value);
                            // user.districtId = v.id;
                            // user.districtName = value;
                          },
                        ),
                        CustomDropdown(
                          title:
                              "१९. तपाइको घरमा यातायातको साधन छ कि छैन ?(छैन भने स्कीप जाने)",
                          items: const ['छ', 'छैन'],
                          onChanged: (value) {
                            // var v = basicData.districtModel
                            //     .firstWhere((model) => model.name == value);
                            // user.districtId = v.id;
                            // user.districtName = value;
                          },
                        ),
                        CustomDropdown(
                          title:
                              "२१. तपाइको घर नजिक प्राकृतिक प्रकोपको खतरा छ कि छैन ?",
                          items: const ['छ', 'छैन'],
                          onChanged: (value) {
                            // var v = basicData.districtModel
                            //     .firstWhere((model) => model.name == value);
                            // user.districtId = v.id;
                            // user.districtName = value;
                          },
                        ),
                        CustomDropdown(
                          title:
                              "२३.तपाईको घर बैशाख १२ गतेको भूकम्पले भत्किएको भए अहिले कहाँ बस्नु भएको छ ?",
                          items: basicData.earthquakeEffectedTypeList,
                          onChanged: (value) {
                            // var v = basicData.districtModel
                            //     .firstWhere((model) => model.name == value);
                            // user.districtId = v.id;
                            // user.districtName = value;
                          },
                        ),
                        CustomDropdown(
                          title:
                              "२४. यदि घर भत्किएको भए घर बनाउन सरकारबाट आनुदान पाउनु भएको छ कि छैन ?",
                          items: const ['छ', 'छैन'],
                          onChanged: (value) {
                            // var v = basicData.districtModel
                            //     .firstWhere((model) => model.name == value);
                            // user.districtId = v.id;
                            // user.districtName = value;
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
