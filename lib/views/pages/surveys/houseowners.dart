import "dart:async";

import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:meropalika/views/pages/surveys/details/houseownwe_details.dart";

import "../../../controllers/surveys/survey_controller.dart";
import "../../../utils/colors.dart";
import "../../../utils/snackbar.dart";

class HouseOwnersSurvey extends StatelessWidget {
  const HouseOwnersSurvey({super.key});

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
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                        16,
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.only(top: 6.0),
                                      child: Text(
                                        "विवरणहरू",
                                        style: TextStyle(
                                          color: kBlack,
                                        ),
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
