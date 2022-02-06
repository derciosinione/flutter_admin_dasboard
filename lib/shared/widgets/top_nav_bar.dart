import 'package:flutter/material.dart';
import 'package:flutter_web_dasboard/shared/themes/app_images.dart';
import 'package:flutter_web_dasboard/shared/widgets/responsive_wiget.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      backgroundColor: Colors.blue,
      leading: getLeadingIcon(context, key),
      elevation: 0,
      title: Row(
        children: [
          Visibility(child: CustomText())
        ],
      ),
    );

Widget getLeadingIcon(BuildContext context, GlobalKey<ScaffoldState> key) {
  return !ResponsiveWiget.isSmallScreen(context)
      ? Row(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 14),
              child: Image.asset(AppImages.logo, width: 40),
            )
          ],
        )
      : IconButton(
          onPressed: () {
            key.currentState?.openDrawer();
          },
          icon: const Icon(Icons.menu),
        );
}
