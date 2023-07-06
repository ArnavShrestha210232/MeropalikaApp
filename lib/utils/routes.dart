import "package:get/get.dart";
import "package:meropalika/views/pages/surveys/houseowners.dart";

var routes = [
  GetPage(
    name: "/houseowners",
    page: () => const HouseOwnersSurvey(),
    transition: Transition.cupertino,
    transitionDuration: const Duration(
      milliseconds: 600,
    ),
  ),
];
