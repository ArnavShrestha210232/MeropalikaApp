import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:meropalika/controllers/users/users_controller.dart";
import "package:meropalika/utils/colors.dart";

import "form/updateuser.dart";

class UsersDetails extends StatelessWidget {
  const UsersDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(UsersController());
    return GetBuilder<UsersController>(builder: (user) {
      return ListView.builder(
        itemCount: user.userModel.length,
        itemBuilder: (BuildContext context, int index) {
          var userData = user.userModel[index];
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
                      const DataCell(
                        Text(
                          "पहिलो नाम",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataCell(
                        Text(userData.firstName ?? ""),
                      ),
                    ]),
                    DataRow(cells: [
                      const DataCell(
                        Text(
                          "बीचको नाम",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataCell(
                        Text(userData.middleName ?? ""),
                      ),
                    ]),
                    DataRow(cells: [
                      const DataCell(
                        Text(
                          "अन्तिम नाम",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataCell(
                        Text(userData.lastName ?? ""),
                      ),
                    ]),
                    DataRow(cells: [
                      const DataCell(
                        Text(
                          "संपर्क न.",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataCell(
                        Text(userData.phoneNo ?? ""),
                      ),
                    ]),
                    DataRow(cells: [
                      const DataCell(
                        Text(
                          "ईमेल",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataCell(
                        Text(userData.email ?? ""),
                      ),
                    ]),
                    DataRow(cells: [
                      const DataCell(
                        Text(
                          "प्रदेश",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataCell(
                        Text(userData.stateName ?? ""),
                      ),
                    ]),
                    DataRow(cells: [
                      const DataCell(
                        Text(
                          "जिल्ला",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataCell(
                        Text(userData.districtName ?? ""),
                      ),
                    ]),
                    DataRow(cells: [
                      const DataCell(
                        Text(
                          "न.पा/ग.पा",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataCell(
                        Text(userData.localLevel.toString()),
                      ),
                    ]),
                    DataRow(cells: [
                      const DataCell(
                        Text(
                          "ठेगाना",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataCell(
                        Text(userData.address ?? ""),
                      ),
                    ]),
                    DataRow(cells: [
                      const DataCell(
                        Text(
                          "वडा.न.",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataCell(
                        Text(userData.wardId.toString()),
                      ),
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: () {
                                user.deleteUseer(userData.id);
                              },
                              icon: const Icon(
                                Icons.delete_forever_outlined,
                              ),
                              color: kRed,
                            ),
                            IconButton(
                              onPressed: () {
                                user.updateUser(userData);
                                Get.to(() => UpdateUserDetails(
                                      id: userData.id,
                                    ));
                              },
                              icon: const Icon(
                                Icons.edit_note_outlined,
                              ),
                              color: kGreen,
                            ),
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
      );
    });
  }
}
