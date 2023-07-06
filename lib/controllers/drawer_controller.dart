import "package:flutter/material.dart";
import "package:flutter_advanced_drawer/flutter_advanced_drawer.dart";
import "package:get/get.dart";
import "package:meropalika/views/pages/modules/airport_module.dart";
import "package:meropalika/views/pages/modules/atm.dart";
import "package:meropalika/views/pages/modules/bloodbank.dart";
import "package:meropalika/views/pages/modules/education.dart";
import "package:meropalika/views/pages/modules/forms/airport.dart";
import "package:meropalika/views/pages/modules/forms/atm.dart";
import "package:meropalika/views/pages/modules/forms/bloodbank.dart";
import "package:meropalika/views/pages/modules/forms/education.dart";
import "package:meropalika/views/pages/modules/forms/health.dart";
import "package:meropalika/views/pages/modules/forms/historic.dart";
import "package:meropalika/views/pages/modules/forms/hotel.dart";
import "package:meropalika/views/pages/modules/forms/hydroproject.dart";
import "package:meropalika/views/pages/modules/forms/industries.dart";
import "package:meropalika/views/pages/modules/forms/information.dart";
import "package:meropalika/views/pages/modules/forms/lake.dart";
import "package:meropalika/views/pages/modules/forms/mountain.dart";
import "package:meropalika/views/pages/modules/forms/parliament.dart";
import "package:meropalika/views/pages/modules/forms/policestation.dart";
import "package:meropalika/views/pages/modules/forms/project.dart";
import "package:meropalika/views/pages/modules/forms/protectedarea.dart";
import "package:meropalika/views/pages/modules/forms/waterfall.dart";
import "package:meropalika/views/pages/modules/healthfacility.dart";
import "package:meropalika/views/pages/modules/historicalplaces.dart";
import "package:meropalika/views/pages/modules/hotel.dart";
import "package:meropalika/views/pages/modules/hydroproject.dart";
import "package:meropalika/views/pages/modules/industries.dart";
import "package:meropalika/views/pages/modules/information.dart";
import "package:meropalika/views/pages/modules/lake.dart";
import "package:meropalika/views/pages/modules/mountain.dart";
import "package:meropalika/views/pages/modules/parliament_member.dart";
import "package:meropalika/views/pages/modules/policestation.dart";
import "package:meropalika/views/pages/modules/project.dart";
import "package:meropalika/views/pages/modules/protectedarea.dart";
import "package:meropalika/views/pages/modules/waterfall.dart";
import "package:meropalika/views/pages/report/allreport.dart";
import "package:meropalika/views/pages/surveys/agriculture.dart";
import "package:meropalika/views/pages/surveys/drinkingwater.dart";
import "package:meropalika/views/pages/surveys/economy.dart";
import "package:meropalika/views/pages/surveys/education.dart";
import "package:meropalika/views/pages/surveys/form/addagriculturedata.dart";
import "package:meropalika/views/pages/surveys/form/adddrinkingwaterdata.dart";
import "package:meropalika/views/pages/surveys/form/addeconomy.dart";
import "package:meropalika/views/pages/surveys/form/addeduction.dart";
import "package:meropalika/views/pages/surveys/form/addhealth.dart";
import "package:meropalika/views/pages/surveys/form/addhousendbuildingsdata.dart";
import "package:meropalika/views/pages/surveys/form/addhouseowner.dart";
import "package:meropalika/views/pages/surveys/form/addinstitutionaldata.dart";
import "package:meropalika/views/pages/surveys/form/addpopulationdata.dart";
import "package:meropalika/views/pages/surveys/health.dart";
import "package:meropalika/views/pages/surveys/housingandbuildings.dart";
import "package:meropalika/views/pages/surveys/institutional.dart";
import "package:meropalika/views/pages/surveys/population.dart";
import "package:meropalika/views/pages/system/dipartment.dart";
import "package:meropalika/views/pages/system/dipartmentname.dart";
import "package:meropalika/views/pages/system/district.dart";
import "package:meropalika/views/pages/system/educationalsystem.dart";
import "package:meropalika/views/pages/system/fiscalyearsystem.dart";
import "package:meropalika/views/pages/system/form/adddipartment.dart";
import "package:meropalika/views/pages/system/form/adddipartmentname.dart";
import "package:meropalika/views/pages/system/form/adddistricts.dart";
import 'package:meropalika/views/pages/system/form/addeducation.dart';
import "package:meropalika/views/pages/system/form/addfiscalyear.dart";
import "package:meropalika/views/pages/system/form/addlocallevel.dart";
import "package:meropalika/views/pages/system/form/addprovince.dart";
import "package:meropalika/views/pages/system/form/addward.dart";
import "package:meropalika/views/pages/system/locallevel.dart";
import "package:meropalika/views/pages/system/organizationsystem.dart";
import "package:meropalika/views/pages/system/province.dart";
import "package:meropalika/views/pages/system/ward.dart";
import "package:meropalika/views/pages/users/form/adduser.dart";
import "package:meropalika/views/pages/users/users.dart";
import "../views/pages/surveys/houseowners.dart";

class CustomDrawerController extends GetxController {
  int? selectedIndex;
  int menuIndex = 0;
  final advancedDrawerController = AdvancedDrawerController();
  void handleMenuButtonPressed() {
    advancedDrawerController.showDrawer();
  }

  closeDrawer() {
    advancedDrawerController.hideDrawer();
  }

  final List<List<Widget>> screens = [
    [
      const UsersDetails(),
    ],
    [
      const HouseOwnersSurvey(),
      const PopulationSurvey(),
      const EconomySurvey(),
      const AgricultureSurvey(),
      const HealthSurvey(),
      const EducationSurvey(),
      const DrinkingWaterAndPersonalHygiene(),
      const HousingAndBuildingSurvey(),
      const InstitutionalSurvey(),
    ],
    [
      const AirportModule(),
      const AtmModule(),
      const BloodBankModule(),
      const ParliamentModule(),
      const HotelModule(),
      const HealthFacilityModule(),
      const HydroProjectModule(),
      const HistoricalPlacesModule(),
      const IndustiesModule(),
      const LakeModule(),
      const MountainModule(),
      const ProjectModule(),
      const InformationModule(),
      const PoliceStationModule(),
      const ProtectedAreaModule(),
      const EducationModule(),
      const WaterFallModule(),
    ],
    [
      const EducationalSystem(),
      const FiscalYearSystem(),
      const OrganizationSystem(),
      const ProvinceSystem(),
      const DistrictSystem(),
      const LocalLevelSystem(),
      const WardSystem(),
      const DipartmentSystem(),
      const DipartmentNameSystem(),
    ],
    [
      const AllReport(),
    ]
  ];

  final List<Map> headTitle = [
    {
      "icon": Icons.people_outline_rounded,
      "title": "प्रयोगकर्ता",
    },
    {
      "icon": Icons.people_outline_rounded,
      "title": "सर्वेक्षण",
    },
    {
      "icon": Icons.people_outline_rounded,
      "title": "प्रयोगकर्ता मोड्युल",
    },
    {
      "icon": Icons.settings_outlined,
      "title": "सेटअप",
    },
    {
      "icon": Icons.article_outlined,
      "title": "रिपोर्ट",
    }
  ];
  List<List<String>> subMenu = [
    ["प्रयोगकर्ता"],
    [
      "घरमुलीको विवरण",
      "जनसंख्या विवरण",
      "आर्थिक अवस्था विवरण",
      "कृषि विवरण",
      "स्वास्थ्य विवरण",
      "शैक्षिक विवरण",
      "खाने पानी, सरसफाई विवरण",
      "आवास विवरण",
      "संस्थागत विवरण",
    ],
    [
      "हवाईअडा",
      "एटिएम",
      "रक्त बैंक",
      "जनप्रतिनिधि",
      "होटल",
      "स्वास्थ्य सुविधा",
      "हाइड्रो पावर",
      "ऐतिहासिक स्थान",
      "उद्योग",
      "ताल",
      "माउन्टेन/हिमाल",
      "प्रोजेक्ट",
      "सूचना",
      "प्रहरी चौकी",
      "संरक्षित क्षेत्र",
      "शिक्षा",
      "झरना",
    ],
    [
      "शिक्षाको प्रकार",
      "आर्थिक वर्ष विवरण",
      "कार्यालय सेटप",
      "प्रदेश",
      "जिल्ला",
      "स्थानिय तह",
      "वडा",
      "विभाग",
      "पदनाम",
    ],
    [
      "सबै रिपोर्ट",
    ],
  ];

  List<List<String>> subMenuTitle = [
    [
      "प्रयोगकर्ता",
    ],
    [
      "घरमुलीको विवरण",
      "जनसंख्या विवरण",
      "आर्थिक अवस्था विवरण",
      "जग्गा, कृषि चौपाया तथा पशुपन्छी विवरण",
      "स्वास्थ्य विवरण",
      "शैक्षिक तथा मानव संसाधन विकास",
      "खाने पानी तथा सरसफाई सम्बन्धी विवरण",
      "आवास तथा भवन सम्बन्धी विवरण",
      "संस्थागत विवरण",
    ],
    [
      "हवाईअडा",
      "एटिएम",
      "रक्त बैंक",
      "जनप्रतिनिधि",
      "होटल",
      "स्वास्थ्य सुविधा",
      "हाइड्रो पावर",
      "ऐतिहासिक स्थान",
      "उद्योग",
      "ताल",
      "माउन्टेन/हिमाल",
      "प्रोजेक्ट",
      "सूचना",
      "प्रहरी चौकी",
      "संरक्षित क्षेत्र",
      "शिक्षा",
      "झरना",
    ],
    [
      "शिक्षाको प्रकार",
      "आर्थिक वर्ष विवरण",
      "कार्यालय सेटप",
      "प्रदेश",
      "जिल्ला",
      "स्थानिय तह",
      "वडा",
      "विभाग",
      "पदनाम",
    ],
    [
      "सबै रिपोर्ट",
    ],
  ];
  Widget addNewData(e) {
    switch (e) {
      case "प्रयोगकर्ता":
        return const AddNewUser();
      case "घरमुलीको विवरण":
        return const SurveyHouseOwners();
      case "जनसंख्या विवरण":
        return const SurveyPopulation();
      case "आर्थिक अवस्था विवरण":
        return const SurveyEconomy();
      case "जग्गा, कृषि चौपाया तथा पशुपन्छी विवरण":
        return const SurveyAgriculture();
      case "स्वास्थ्य विवरण":
        return const SurveyHealth();
      case "शैक्षिक तथा मानव संसाधन विकास":
        return const SurveyEducation();
      case "खाने पानी तथा सरसफाई सम्बन्धी विवरण":
        return const SurveyDrinkingWater();
      case "आवास तथा भवन सम्बन्धी विवरण":
        return const SurveyHouseAndBuildings();
      case "संस्थागत विवरण":
        return const SurveyInstitution();
      case "हवाईअडा":
        return const AddAirportDetails();
      case "एटिएम":
        return const AddAtmDetails();
      case "रक्त बैंक":
        return const AddBloodBank();
      case "जनप्रतिनिधि":
        return const AddParliamentDetails();
      case "होटल":
        return const AddHotelsDetails();
      case "स्वास्थ्य सुविधा":
        return const AddHealthDetails();
      case "हाइड्रो पावर":
        return const AddHydropowerDetails();
      case "ऐतिहासिक स्थान":
        return const AddHistoricDetails();
      case "उद्योग":
        return const AddIndustriesDetails();
      case "ताल":
        return const AddLakeDetails();
      case "माउन्टेन/हिमाल":
        return const AddMountainDetails();
      case "प्रोजेक्ट":
        return const AddProjectDetails();
      case "सूचना":
        return const AddInformationdetails();
      case "प्रहरी चौकी":
        return const AddPoliceStationDetails();
      case "संरक्षित क्षेत्र":
        return const AddProtectedAreaDetails();
      case "शिक्षा":
        return const AddEducationDetails();
      case "झरना":
        return const AddWaterfall();
      case "शिक्षाको प्रकार":
        return const SystemEducationType();
      case "आर्थिक वर्ष विवरण":
        return const SystemFiscalYear();
      case "कार्यालय सेटप":
        return const SystemDepartment();
      case "प्रदेश":
        return const SystemProvince();
      case "जिल्ला":
        return const SystemDistricts();
      case "स्थानिय तह":
        return const SystemLocalLevel();
      case "वडा":
        return const SystemWards();
      case "विभाग":
        return const SystemDepartment();
      case "पदनाम":
        return const SystemDepartmentName();
      default:
        return const AddNewUser();
    }
  }

  dashboardOpen() {
    selectedIndex = null;
    closeDrawer();
    update();
  }
}

class DrawerItemsController extends GetxController {
  final List<bool> listOpen = [
    false,
    false,
    false,
    false,
    false,
  ];

  changeListBool(index) {
    for (int i = 0; i < listOpen.length; i++) {
      if (i != index) {
        listOpen[i] = false;
      }
      if (i == index) {
        listOpen[index] = !listOpen[index];
      }
    }
    update();
  }
}
