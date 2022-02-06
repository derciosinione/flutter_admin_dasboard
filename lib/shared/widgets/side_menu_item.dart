import 'package:flutter/material.dart';
import 'package:flutter_web_dasboard/shared/widgets/horizontal_menu_item.dart';
import 'package:flutter_web_dasboard/shared/widgets/responsive_wiget.dart';
import 'package:flutter_web_dasboard/shared/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;

  const SideMenuItem({Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWiget.isCustomSize(context)) {
      return VerticalMenuItem(itemName: itemName, onTap: onTap);
    }
    return HorizontalMenuItem(itemName: itemName, onTap: onTap);
  }
}
