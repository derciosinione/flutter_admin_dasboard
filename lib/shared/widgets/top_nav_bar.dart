import 'package:flutter/material.dart';
import 'package:flutter_web_dasboard/shared/constants/color.dart';
import 'package:flutter_web_dasboard/shared/themes/app_images.dart';
import 'package:flutter_web_dasboard/shared/widgets/responsive_wiget.dart';

import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: getLeadingIcon(context, key),
      elevation: 0,
      title: Row(
        children: [
          const Visibility(
            child: CustomText(
              text: "Dash",
              color: lightGrey,
              size: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(child: Container(color: Colors.red)),
          IconButton(
            icon: Icon(Icons.settings, color: dark.withOpacity(.7)),
            onPressed: () {},
          ),
          Stack(
            children: [
              IconButton(
                  icon: Icon(Icons.notifications, color: dark.withOpacity(.7)),
                  onPressed: () {}),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12,
                  height: 12,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: light, width: 2),
                  ),
                ),
              ),
            ],
          ),
          Container(width: 1, height: 22, color: lightGrey),
          const SizedBox(width: 24),
          const CustomText(text: "Dercio Derone", color: lightGrey),
          const SizedBox(width: 16),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.all(2),
              child: const CircleAvatar(
                backgroundColor: light,
                child: Icon(Icons.person_outline, color: dark),
              ),
            ),
          )
        ],
      ),
      iconTheme: const IconThemeData(color: dark),
      backgroundColor: Colors.transparent,
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
