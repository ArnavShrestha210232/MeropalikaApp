import 'package:flutter/material.dart';
import 'package:meropalika/views/widgets/basicpage.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/textstyle.dart';
import '../../../widgets/formfeild.dart';

class SystemEducationType extends StatelessWidget {
  const SystemEducationType({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return BasicPage(
      title: 'शिक्षाको प्रकार',
      child: Container(
        margin: const EdgeInsets.all(12),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              FormFeildWidget(
                text: " नाम *",
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.name,
                require: true,
                validationError: "नाम महत्त्वपूर्ण छ",
                controller: name,
              ),
              MaterialButton(
                color: kPrimary,
                onPressed: () {
                  if (formKey.currentState!.validate()) {}
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
      ),
    );
  }
}
