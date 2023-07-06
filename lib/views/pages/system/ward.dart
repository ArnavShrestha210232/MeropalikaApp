import "package:flutter/material.dart";
import "package:get/get.dart";

import "../../../controllers/system/system_controller.dart";
import "../../../utils/colors.dart";

class WardSystem extends StatelessWidget {
  const WardSystem({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(12),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const AlwaysScrollableScrollPhysics(),
      children: [
        GetBuilder<SystemController>(builder: (system) {
          return DataTableTheme(
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
              columns: const [
                DataColumn(
                  label: Text(
                    'नाम',
                  ),
                ),
                DataColumn(
                  label: Text(
                    'सुरु साल',
                  ),
                ),
                DataColumn(
                  label: Text(
                    'अन्त्य साल',
                  ),
                ),
                DataColumn(
                  label: Text(
                    'सुरु मिति',
                  ),
                ),
                DataColumn(
                  label: Text(
                    'अन्तिम मिति',
                  ),
                ),
                DataColumn(
                  label: Text(
                    'स्थिति',
                  ),
                ),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text('test')),
                  DataCell(Text('5/23/2023 12:00:00 AM')),
                  DataCell(Text('5/23/2023 12:00:00 AM')),
                  DataCell(Text('5/23/2023 12:00:00 AM')),
                  DataCell(Text('5/23/2023 12:00:00 AM')),
                  DataCell(Text('')),
                ]),
              ],
            ),
          );
        }),
      ],
    );
  }
}
