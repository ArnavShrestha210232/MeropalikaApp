import "package:flutter/material.dart";
import "package:meropalika/utils/colors.dart";
import "package:meropalika/utils/textstyle.dart";

class BasicPage extends StatelessWidget {
  const BasicPage({
    super.key,
    required this.title,
    required this.child,
    this.actions,
  });
  final String title;
  final List<Widget>? actions;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kPrimary,
        iconTheme: const IconThemeData(color: kWhite),
        titleTextStyle: appBarText(color: kWhite),
        title: Text(title),
        actions: actions,
      ),
      body: child,
    );
  }
}
