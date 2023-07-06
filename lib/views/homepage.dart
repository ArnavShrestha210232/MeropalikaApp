import "package:flutter/material.dart";
import "package:flutter_advanced_drawer/flutter_advanced_drawer.dart";
import "package:get/get.dart";
import "package:meropalika/utils/colors.dart";
import "package:meropalika/views/pages/dashboard.dart";

import "../controllers/drawer_controller.dart";
import "../utils/textstyle.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomDrawerController>(builder: (data) {
      return AdvancedDrawer(
        backdrop: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: kPrimary.withOpacity(0.6),
          ),
        ),
        controller: data.advancedDrawerController,
        animationCurve: Curves.ease,
        animationDuration: const Duration(milliseconds: 300),
        animateChildDecoration: true,
        rtlOpening: false,
        // openScale: 1.0,
        disabledGestures: false,
        childDecoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        drawer: Drawer(
          shape: const Border(),
          backgroundColor: kPrimary,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              //   mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: SafeArea(
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      tileColor: kGreen.withOpacity(0.7),
                      iconColor: kWhite,
                      textColor: kWhite,
                      leading: const Icon(Icons.space_dashboard_outlined),
                      titleAlignment: ListTileTitleAlignment.center,
                      title: const Text("DashBoard"),
                      onTap: () {
                        data.dashboardOpen();
                      },
                      trailing: const Icon(
                        Icons.arrow_right_sharp,
                      ),
                    ),
                  ),
                ),
                const DrawerListItems(),
              ],
            ),
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              backgroundColor: kPrimary,
              iconTheme: const IconThemeData(color: kWhite),
              titleTextStyle: appBarText(color: kWhite),
              title: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text((data.selectedIndex != null)
                    ? data.subMenuTitle[data.selectedIndex!][data.menuIndex]
                    : "ड्यासबोर्ड"),
              ),
              leading: IconButton(
                onPressed: data.handleMenuButtonPressed,
                icon: ValueListenableBuilder<AdvancedDrawerValue>(
                  valueListenable: data.advancedDrawerController,
                  builder: (_, value, __) {
                    return AnimatedSwitcher(
                      duration: const Duration(milliseconds: 250),
                      child: Icon(
                        value.visible ? Icons.clear : Icons.menu,
                        key: ValueKey<bool>(value.visible),
                      ),
                    );
                  },
                ),
              ),
              actions: [
                (data.selectedIndex != null)
                    ? (data.subMenuTitle[data.selectedIndex!]
                                [data.menuIndex]) !=
                            "सबै रिपोर्ट"
                        ? Container(
                            margin: const EdgeInsets.all(8),
                            child: ElevatedButton.icon(
                              onPressed: () {
                                Get.to(() => data.addNewData(
                                    data.subMenuTitle[data.selectedIndex!]
                                        [data.menuIndex]));
                              },
                              style: ButtonStyle(
                                iconColor: MaterialStateProperty.all(kWhite),
                                backgroundColor:
                                    MaterialStateProperty.all(kBlack),
                              ),
                              icon: const Icon(
                                Icons.add,
                              ),
                              label: const Text(
                                "नयाँ बनाउनुहोस",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: kWhite,
                                ),
                              ),
                            ),
                          )
                        : Container()
                    : Container(),
              ]),
          body: (data.selectedIndex != null)
              ? data.screens[data.selectedIndex!][data.menuIndex]
              : const DashboardPage(),
        ),
      );
    });
  }
}

class DrawerListItems extends StatelessWidget {
  const DrawerListItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(DrawerItemsController());
    return GetBuilder<CustomDrawerController>(builder: (data) {
      return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: data.headTitle.length,
        itemBuilder: (BuildContext context, int index) {
          var value = data.headTitle[index];
          return Container(
            margin: const EdgeInsets.fromLTRB(
              12,
              12,
              12,
              0,
            ),
            child: GetBuilder<DrawerItemsController>(builder: (controller) {
              return Column(
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    tileColor: kWhite.withOpacity(0.2),
                    iconColor: kWhite,
                    textColor: kWhite,
                    leading: Icon(value["icon"]),
                    title: Text(value["title"]),
                    onTap: () {
                      data.selectedIndex = index;
                      controller.changeListBool(index);
                    },
                    trailing: const Icon(
                      Icons.arrow_drop_down_sharp,
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: controller.listOpen[index] ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 600),
                    child: Visibility(
                      visible: controller.listOpen[index],
                      child: Container(
                        margin: const EdgeInsets.only(
                          top: 6,
                          left: 8,
                        ),
                        child: Column(
                          children: [
                            for (int i = 0;
                                i < data.subMenu[index].length;
                                i++) ...{
                              ListTile(
                                tileColor: kWhite.withOpacity(0.1),
                                iconColor: kWhite,
                                textColor: kWhite,
                                leading: const Icon(
                                  Icons.list,
                                ),
                                title: Text(
                                  data.subMenu[index][i],
                                ),
                                onTap: () {
                                  data.menuIndex = i;
                                  data.update();
                                  data.closeDrawer();
                                },
                              ),
                            }
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              );
            }),
          );
        },
      );
    });
  }
}
