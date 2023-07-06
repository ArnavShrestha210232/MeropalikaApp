import 'package:flutter/material.dart';
import 'package:meropalika/models/report_model.dart';
import 'package:meropalika/utils/colors.dart';
import 'package:meropalika/views/widgets/basicpage.dart';

class HouseOwnerDetails extends StatelessWidget {
  final ReportModel reportModel;

  const HouseOwnerDetails({super.key, required this.reportModel});

  @override
  Widget build(BuildContext context) {
    return BasicPage(
      title: 'रिपोर्ट',
      child: Builder(builder: (context) {
        return ListView(
          padding: const EdgeInsets.all(12),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: const Text(
                'बस्तुगत विवरण',
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
            ),
            DataTableTheme(
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
                    const DataCell(Text('घरमुलीको नाम')),
                    DataCell(Text('${reportModel.name}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('घरमुली')),
                    DataCell(Text('${reportModel.type}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('वार्ड ')),
                    DataCell(Text('${reportModel.wardNo}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('बस्ती/गाउ/टोलको ')),
                    DataCell(Text('${reportModel.address}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('घर न')),
                    DataCell(Text('${reportModel.houseNo}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('जम्मा परिवार')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('(क) पुरुष संख्या')),
                    DataCell(Text('${reportModel.maleFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('(ख) महिला संख्या')),
                    DataCell(Text('${reportModel.femaleFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('(ग) तेस्रो लिंगी संख्या')),
                    DataCell(Text('${reportModel.otherFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('संगै बस्ने संख्या')),
                    DataCell(Text('${reportModel.togetherCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('(क) पुरुष संख्या')),
                    DataCell(Text('${reportModel.togetherMaleCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('(ख) महिला संख्या')),
                    DataCell(Text('${reportModel.togetherFemaleCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('(ग) तेस्रो लिंगी संख्या')),
                    DataCell(Text('${reportModel.togetherOtherCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('नपा बाहिर अन्य ठाउमा बस्नेको संख्या')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('(क) पुरुष संख्या')),
                    DataCell(Text('${reportModel.residingMaleCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('(ख) महिला संख्या')),
                    DataCell(Text('${reportModel.residingFemaleCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('(ग) तेस्रो लिंगी संख्या')),
                    DataCell(Text('${reportModel.residingOtherCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('विदेशमा बस्नेको संख्या')),
                    DataCell(Text('${reportModel.residingAbroadCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('(क) पुरुष संख्या')),
                    DataCell(Text('${reportModel.residingAbroadMaleCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('(ख) महिला संख्या')),
                    DataCell(Text('${reportModel.residingAbroadFemaleCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('(ग) तेस्रो लिंगी संख्या')),
                    DataCell(Text('${reportModel.residingAbroadOtherCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('घरको प्रकार तथा किसिम :')),
                    DataCell(Text('${reportModel.castId}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text(
                        'तपाईको परिवारमा कमाउन सक्ने सिपयुक्त व्यक्ति बेरोजगार बसेको छ ?')),
                    DataCell(Text('${reportModel.isUnEmployedMember}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text(
                        'यदि लालपुर्जा छैन भने तपाई बसेको जग्गाको स्वामित्व कसको हो ?')),
                    DataCell(Text('${reportModel.landOwner}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text(
                        'तपाइको परिवारका सदस्यहरुको नाममा जग्गा जमिन कति छ ? आना')),
                    DataCell(Text('${reportModel.landAnna}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text(
                        'तपाइको परिवारका सदस्यहरुको नाममा जग्गा जमिन कति छ ? रोपनी.')),
                    DataCell(Text('${reportModel.landRopani}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('परिवारको सदस्यहरुको मुख्य पेशा')),
                    DataCell(Text('${reportModel.skillTypeId}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('औसत मासिक पारिवारिक बचत (हजारमा)')),
                    DataCell(Text('${reportModel.averageMonthlySavingId}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text(
                        'तपाईको परिवारको कस्तो किसिमको सिपयुक्त व्यक्तिहरु छन् ?')),
                    DataCell(Text('${reportModel.isAnyBusiness}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text(
                        'यदि छ भने कस्तो किसिमको व्यापार / ब्यबसाय गर्नु भएको छ ?')),
                    DataCell(Text('${reportModel.businessTypeId}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(
                        Text('बालबच्चालाई कुन स्कुलमा पढाउनु हुन्छ ?')),
                    DataCell(Text('${reportModel.school}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text(
                        'तपाइको घरमा यातायातको साधन छ कि छैन ?(छैन भने स्कीप जाने)')),
                    DataCell(Text('${reportModel.isVehicle}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('छ भने के छ ?')),
                    DataCell(Text('${reportModel.vehicleId}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text(
                        'तपाइको घर नजिक प्राकृतिक प्रकोपको खतरा छ कि छैन ?')),
                    DataCell(Text('${reportModel.isNaturalDisasterArea}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('छ भने कस्तो ?')),
                    DataCell(Text('${reportModel.naturalDisasterId}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text(
                        'तपाईको घरबाट निस्केको फोहोर मैला कहाँ / कसरी ब्यबस्थापन गर्नुहुन्छ ?')),
                    DataCell(Text('${reportModel.wasteManagementId}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text(
                        'तपाईको घर बैशाख १२ गतेको भूकम्पले भत्किएको भए अहिले कहाँ बस्नु भएको छ ?')),
                    DataCell(Text('${reportModel.earthquake2072Id}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text(
                        'यदि घर भत्किएको भए घर बनाउन सरकारबाट आनुदान पाउनु भएको छ कि छैन ?')),
                    DataCell(Text('${reportModel.isEarthquakeAnudan}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(
                        Text('यदि पाउनु भएको छ भने कति किस्ता पाउनु भयो ?')),
                    DataCell(Text('${reportModel.earthquakeKista}')),
                  ]),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: const Text(
                'जनसंख्या विवरण',
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
            ),
            DataTableTheme(
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
                    const DataCell(Text('जयियता:')),
                    DataCell(Text('${reportModel.religionId}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('धर्म:')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('मातृभाषा:')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('घरको स्वामित्व:')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text(
                        'तपाईले कुनै किसिमको व्यापार / ब्यबसाय गर्नु भएको छ ?')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('तपाई विवाहित हुनुहुन्छ कि के हो?')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: const Text(
                'आर्थिक अवस्था विवरण',
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
            ),
            DataTableTheme(
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
                    const DataCell(Text('तपाईको घर भाडामा दिनु भएको छ ?')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('तपाईले ॠण लिएको भएको छ ?')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(
                        Text('औसत मासिक पारिवारिक आम्दानी (हजारमा)')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(
                        Text('खाधानन् पर्याप्तताको अवस्था कस्तो छ ?')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('तपाईको जग्गा भाडामा दिनु भएको छ ?')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: const Text(
                'कृषि विवरण',
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
            ),
            DataTableTheme(
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
                    const DataCell(Text('तपाई संग जग्गाको लालपुर्जा छ ?')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('पशु/पन्छी पाल्नु भएको छ ?')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text(
                        'यदी जग्गाको लालपुर्जा छ भने उक्त जग्गा टोखा नगरपालिका भिरा छ कि बाहिर छ ?')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: const Text(
                'स्वास्थ्य विवरण',
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
            ),
            DataTableTheme(
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
                    const DataCell(Text(
                        'तपाइको परिवारमा कुनै व्यक्ति अपांग छन् ? (छैन भने स्कीप जाने)')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text(
                        'तपाइको परिवारको सदस्यलाई कुनै दिर्घ रोग लागेको छ ? (छैन भने स्कीप जाने)')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                ],
              ),
            ),
            const Text(
              'खाने पानी तथा सरसफाई सम्बन्धी विवरण',
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            DataTableTheme(
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
                        Text('तपाईको परिवारको खानेपानीको स्रोत कुन हो ?')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(
                        Text('तपाईको घरमा पकाउन प्रयोग हुने इन्धन कुन हो ?')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text(
                        'तपाईको घरमा कस्तो प्रकारको चुल्हो प्रयोग गर्नुहुन्छ ?')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('तपाइको आफ्नै चर्पी छ ?')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('शौचालय')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('प्रकाशको स्रोत')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('तपाईको घरमा बिजुली जडान छ ?')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('पशु/पन्छी पाल्नु भएको छ ?')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('तपाई विवाहित हुनुहुन्छ कि के हो?')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: const Text(
                'आवास तथा भवन सम्बन्धी विवरण',
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
            ),
            DataTableTheme(
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
                    const DataCell(Text('तपाईको घर कति तल्लाको छ ?')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('तपाईको घरको छानो के हो ?')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('घर नक्सा विवरण')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                  DataRow(cells: [
                    const DataCell(Text('घरको स्वामित्व')),
                    DataCell(Text('${reportModel.totalFamilyCount}')),
                  ]),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: const Text(
                'परिवारक सदस्य रोजगारीका लागि विदेश गएको गएको अवधि (बर्षमा)',
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
            ),
            DataTableTheme(
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
                  for (int i = 0;
                      i < reportModel.abhadhiDatas!.length;
                      i++) ...{
                    DataRow(cells: [
                      DataCell(Text('${reportModel.abhadhiDatas![i].name}')),
                      DataCell(Text('${reportModel.abhadhiDatas![i].count}')),
                    ]),
                  },
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
