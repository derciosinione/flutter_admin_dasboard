import 'package:flutter/material.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;
const int costumScreenSize = 1100;

class ResponsiveWiget extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;
  final Widget? costumScreen;

  const ResponsiveWiget(
      {Key? key,
      required this.largeScreen,
      this.mediumScreen,
      this.smallScreen,
      this.costumScreen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
