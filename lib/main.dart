import "package:flutter/material.dart";
import "package:hive_flutter/hive_flutter.dart";
import "package:meropalika/views/homepage.dart";
import "package:meropalika/views/splashscreen.dart";
import "utils/bindings.dart";
import "utils/textstyle.dart";
import "package:get/get.dart";

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("meropalika");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mero Palika",
      theme: ThemeData(
        useMaterial3: true,
      ),
      builder: (context, child) {
        final mediaQueryData = MediaQuery.of(context);

        return MediaQuery(
          data: mediaQueryData.copyWith(
            textScaleFactor: TextSize.textScaleFactor(context),
          ),
          child: child!,
        );
      },
      initialBinding: MyBindings(),
      getPages: [
        GetPage(
          name: "/splash",
          page: () => const SplashScreen(),
          transition: Transition.cupertino,
          transitionDuration: const Duration(
            milliseconds: 500,
          ),
        ),
        GetPage(
          name: "/home",
          page: () => const HomePage(),
          transition: Transition.cupertino,
          transitionDuration: const Duration(
            milliseconds: 500,
          ),
        ),
      ],
      initialRoute: "/splash",
    );
  }
}
