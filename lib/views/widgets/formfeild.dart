import "package:flutter/material.dart";
import "package:meropalika/utils/colors.dart";

class FormFeildWidget extends StatelessWidget {
  const FormFeildWidget({
    super.key,
    required this.text,
    required this.textInputAction,
    required this.textInputType,
    required this.require,
    this.validationError = "",
    required this.controller,
    this.obscure = false,
  });

  final String text;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final bool require;
  final String validationError;
  final TextEditingController controller;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (text != '') ...{
          Text(text),
          const SizedBox(
            height: 6,
          ),
        },
        TextFormField(
          textInputAction: textInputAction,
          keyboardType: textInputType,
          cursorColor: kPrimary,
          obscureText: obscure,
          validator: (value) {
            if (require) {
              if (value == null || value.isEmpty) {
                return validationError;
              }
              return null;
            }
            return null;
          },
          decoration: const InputDecoration(
            // hintText: text,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: kPrimary,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: kRed,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: kRed,
              ),
            ),
          ),
          controller: controller,
        ),
        const SizedBox(
          height: 6,
        ),
      ],
    );
  }
}
