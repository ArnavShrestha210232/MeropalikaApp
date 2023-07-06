import 'package:flutter/material.dart';

import '../../utils/dropdown.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({
    super.key,
    required this.title,
    required this.items,
    required this.onChanged,
  });

  final String title;
  final List<String> items;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(
          height: 6,
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Container(
            height: 45,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: CustDropDown(
              maxListHeight: 200,
              items: items.map((e) {
                return CustDropdownMenuItem(
                  value: e,
                  child: Text(e),
                );
              }).toList(),
              hintText: "--छानुहोस--",
              borderRadius: 5,
              onChanged: onChanged,
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
      ],
    );
  }
}
