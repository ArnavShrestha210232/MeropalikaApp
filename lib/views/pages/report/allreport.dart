import "package:flutter/material.dart";
import "package:get/get.dart";

import "../../../controllers/surveys/survey_controller.dart";
import "../../../utils/colors.dart";
import "../../../utils/snackbar.dart";
import "../surveys/details/houseownwe_details.dart";

class AllReport extends StatelessWidget {
  const AllReport({super.key});

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
                          color: kWhite,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
                            const DataCell(Text(
                              'S.N',
                              style: TextStyle(
                                color: kBlack,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                            DataCell(Text('${index + 1}')),
                          ]),
                          DataRow(cells: [
                            const DataCell(Text(
                              'Id',
                              style: TextStyle(
                                color: kBlack,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                            DataCell(Text(value.id.toString())),
                          ]),
                          DataRow(cells: [
                            const DataCell(Text(
                              '१. घरमुलीको नाम थर',
                              style: TextStyle(
                                color: kBlack,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                            DataCell(Text(value.name.toString())),
                          ]),
                          DataRow(cells: [
                            const DataCell(Text(
                              'HouseCode',
                              style: TextStyle(
                                color: kBlack,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                            DataCell(Text(value.houseCode.toString())),
                          ]),
                          DataRow(cells: [
                            const DataCell(Text(
                              '२. घरमुली',
                              style: TextStyle(
                                color: kBlack,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                            DataCell(Text(value.type.toString())),
                          ]),
                          DataRow(cells: [
                            const DataCell(Text(
                              '४. बस्ती / गाउ / टोलको नाम',
                              style: TextStyle(
                                color: kBlack,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                            DataCell(Text(value.address.toString())),
                          ]),
                          DataRow(cells: [
                            const DataCell(Text(
                              '३. वार्ड नं',
                              style: TextStyle(
                                color: kBlack,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                            DataCell(Text(value.wardNo.toString())),
                          ]),
                          DataRow(cells: [
                            const DataCell(Text(
                              '६. जम्मा परिवार संख्या',
                              style: TextStyle(
                                color: kBlack,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                            DataCell(Text(value.totalFamilyCount.toString())),
                          ]),
                          DataRow(cells: [
                            const DataCell(
                              Text(
                                "कार्यहरू",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            DataCell(
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  MaterialButton(
                                    onPressed: () async {
                                      loaderFunction();

                                      await data
                                          .getHouseOwnersDeetails(value.id)
                                          .then((value) {
                                        Get.back();
                                        Get.to(
                                          () => HouseOwnerDetails(
                                              reportModel: data.reportModel),
                                          transition: Transition.cupertino,
                                          duration: const Duration(
                                            milliseconds: 500,
                                          ),
                                        );
                                      }).onError((error, stackTrace) {
                                        Get.back();

                                        return null;
                                      });
                                    },
                                    color: kGreen,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        12,
                                      ),
                                    ),
                                    child: const Text(
                                      "रिपोर्ट",
                                      style: TextStyle(
                                        color: kBlack,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
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
