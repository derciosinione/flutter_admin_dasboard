import 'package:flutter/material.dart';
import 'package:flutter_web_dasboard/controllers/menu_controller.dart';
import 'package:flutter_web_dasboard/controllers/navigation_controller.dart';
import 'package:flutter_web_dasboard/shared/constants/color.dart';
import 'package:flutter_web_dasboard/site_layout.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dasboard",
      theme: ThemeData(
        scaffoldBackgroundColor: light,
        primaryColor: Colors.blue,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
        }),
      ),
      home: const SiteLayout(),
    );
  }
}
