import 'package:flutter/material.dart';
import 'package:flutter_web_dasboard/routes/routes.dart';
import 'package:flutter_web_dasboard/shared/constants/color.dart';
import 'package:flutter_web_dasboard/shared/constants/controllers.dart';
import 'package:flutter_web_dasboard/shared/themes/app_images.dart';
import 'package:flutter_web_dasboard/shared/widgets/custom_text.dart';
import 'package:flutter_web_dasboard/shared/widgets/responsive_wiget.dart';
import 'package:flutter_web_dasboard/shared/widgets/side_menu_item.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(children: [
        if (ResponsiveWiget.isSmallScreen(context))
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 40),
              Row(
                children: [
                  SizedBox(width: _width / 48),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Image.asset(AppImages.logo, width: 40),
                  ),
                  const Flexible(
                    child: CustomText(
                      text: "Dash",
                      size: 20,
                      fontWeight: FontWeight.bold,
                      color: active,
                    ),
                  ),
                  SizedBox(width: _width / 48)
                ],
              ),
            ],
          ),
        const SizedBox(height: 40),
        Divider(color: lightGrey.withOpacity(.1)),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: sideMenuItems
              .map((itemName) => SideMenuItem(
                  itemName: itemName == authenticationPageRoute
                      ? "Log Out"
                      : itemName,
                  onTap: () {
                    print("Derone");
                    if (itemName == authenticationPageRoute) {
                      // TODO go to authentication page
                    }
                    if (!menuController.isActive(itemName)) {
                      menuController.changeActiveItemTo(itemName);
                      if (ResponsiveWiget.isSmallScreen(context)) Get.back();
                      print("Got from side menu $itemName");
                      navigationController.navigateTo(itemName);
                    }
                  }))
              .toList(),
        )
      ]),
    );
  }
}
