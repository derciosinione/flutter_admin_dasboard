import 'package:flutter/material.dart';

import 'shared/widgets/large_screen.dart';
import 'shared/widgets/responsive_wiget.dart';
import 'shared/widgets/small_screen.dart';
import 'shared/widgets/top_nav_bar.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

    return Scaffold(
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: const Drawer(),
        body: const ResponsiveWiget(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
        ));
  }
}
