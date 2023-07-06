import "package:flutter/material.dart";
import "package:get/get.dart";

import "../../../controllers/surveys/survey_controller.dart";
import "../../../utils/colors.dart";

class EducationSurvey extends StatelessWidget {
  const EducationSurvey({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SurveyController>(builder: (data) {
      return data.houseOwnerModel.isNotEmpty
          ? ListView.builder(
              itemCount: data.houseOwnerModel.length,
              itemBuilder: (BuildContext context, int index) {
                var value = data.houseOwnerModel[index];
                return Container(
                  margin: const EdgeInsets.all(12),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
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
                        columns: const [
                          DataColumn(
                            label: Text(
                              "नाम",
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              "विवरण",
                            ),
                          ),
                        ],
                        rows: [
                          DataRow(cells: [
                            const DataCell(Text('S.N')),
                            DataCell(Text('${index + 1}')),
                          ]),
                          DataRow(cells: [
                            const DataCell(Text('१. घरमुलीको नाम थर :')),
                            DataCell(Text(value.name.toString())),
                          ]),
                          DataRow(cells: [
                            const DataCell(Text('२. घरमुली :')),
                            DataCell(Text(value.type.toString())),
                          ]),
                          DataRow(cells: [
                            const DataCell(Text('४. बस्ती / गाउ / टोलको नाम')),
                            DataCell(Text(value.address.toString())),
                          ]),
                          DataRow(cells: [
                            const DataCell(Text('३. वार्ड नं')),
                            DataCell(Text(value.wardNo.toString())),
                          ]),
                        ],
                      ),
                    ),
                  ),
                );
              },
            )
          : const Center(
              child: Text(' No Data Available'),
            );
    });
  }
}
