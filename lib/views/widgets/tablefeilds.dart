import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utils/colors.dart';

class TableFormFeild extends StatelessWidget {
  const TableFormFeild({
    super.key,
    this.title = '',
    required this.headings,
    required this.tableFeildList,
    required this.controllers,
  });

  final String title;
  final List headings;

  final List tableFeildList;
  final List<List<TextEditingController>> controllers;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title != '' ? Text(title) : const SizedBox.shrink(),
        const SizedBox(
          height: 8,
        ),
        FittedBox(
          fit: BoxFit.fitWidth,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width,
            ),
            child: DataTableTheme(
              data: DataTableThemeData(
                  headingRowColor: MaterialStateColor.resolveWith(
                    (states) => kPrimary,
                  ),
                  headingTextStyle: const TextStyle(
                      color: kWhite, fontWeight: FontWeight.bold)),
              child: DataTable(
                border: TableBorder.all(
                  width: 0.2,
                  borderRadius: BorderRadius.circular(4),
                ),
                columns: [
                  for (int i = 0; i < headings.length; i++) ...{
                    DataColumn(
                      label: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          headings[i],
                        ),
                      ),
                    ),
                  }
                ],
                rows: [
                  for (int i = 0; i < tableFeildList.length; i++) ...{
                    DataRow(cells: [
                      DataCell(
                        Text(
                          tableFeildList[i],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      for (int j = 0; j < (headings.length - 1); j++) ...{
                        DataCell(
                          TableTextFormFeild(controller: controllers[i][j]),
                        ),
                      }
                    ]),
                  }
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}

class TableTextFormFeild extends StatelessWidget {
  const TableTextFormFeild({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'आवश्यक छ';
        }
        return null;
      },
      inputFormatters: [
        LengthLimitingTextInputFormatter(2),
      ],
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      controller: controller,
      decoration: const InputDecoration(
        hintText: 'गणना',
        contentPadding: EdgeInsets.symmetric(
          horizontal: 12,
        ),
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        errorBorder: InputBorder.none,
      ),
    );
  }
}
