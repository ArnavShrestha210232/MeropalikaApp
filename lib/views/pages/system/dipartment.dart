import "package:flutter/material.dart";
import "package:get/get.dart";

import "../../../controllers/system/system_controller.dart";
import "../../../utils/colors.dart";

class DipartmentSystem extends StatelessWidget {
  const DipartmentSystem({super.key});

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
                    'पहिचान नंबर',
                  ),
                ),
                DataColumn(
                  label: Text(
                    'नाम',
                  ),
                ),
                DataColumn(
                  label: Text(
                    'कार्य',
                  ),
                ),
              ],
              rows: [
                for (int i = 0; i < system.educationTypes.length; i++) ...{
                  DataRow(cells: [
                    DataCell(Text(
                      system.educationTypes[i].id.toString(),
                    )),
                    DataCell(Text(
                      system.educationTypes[i].name.toString(),
                    )),
                    DataCell(
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit_note_outlined,
                        ),
                        color: kGreen,
                      ),
                    ),
                  ]),
                }

                // Add more rows as needed
              ],
            ),
          );
        }),
      ],
    );
  }
}
