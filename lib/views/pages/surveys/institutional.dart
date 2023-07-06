import "package:flutter/material.dart";
import "package:get/get.dart";

import "../../../controllers/surveys/survey_controller.dart";
import "../../../utils/colors.dart";

class InstitutionalSurvey extends StatelessWidget {
  const InstitutionalSurvey({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SurveyController>(builder: (data) {
      return data.houseOwnerModel.isNotEmpty
          ? ListView.builder(
              itemCount: data.houseOwnerModel.length,
              itemBuilder: (BuildContext context, int index) {
                // var value = data.houseOwnerModel[index];
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
                          DataColumn(
                            label: Text(
                              "कार्यहरू",
                            ),
                          ),
                        ],
                        rows: const [
                          DataRow(cells: [
                            DataCell(Text('वडा नं')),
                            DataCell(Text('0')),
                            DataCell(Text('कार्यहरू')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('विद्यालय')),
                            DataCell(Text('0')),
                            DataCell(Text('कार्यहरू')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('सरकारी कार्यालय')),
                            DataCell(Text('0')),
                            DataCell(Text('कार्यहरू')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('सांस्कृतिक धरोहर')),
                            DataCell(Text('0')),
                            DataCell(Text('कार्यहरू')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('प्राकृतिक संसाधन')),
                            DataCell(Text('0')),
                            DataCell(Text('कार्यहरू')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('सुरक्षा एजेन्सीहरू')),
                            DataCell(Text('0')),
                            DataCell(Text('कार्यहरू')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('बैंक')),
                            DataCell(Text('0')),
                            DataCell(Text('कार्यहरू')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('स्वास्थ्य पोस्ट')),
                            DataCell(Text('0')),
                            DataCell(Text('कार्यहरू')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('उद्योग')),
                            DataCell(Text('0')),
                            DataCell(Text('कार्यहरू')),
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
