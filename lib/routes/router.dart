import 'package:flutter/material.dart';
import 'package:flutter_web_dasboard/pages/clients/clients.dart';
import 'package:flutter_web_dasboard/pages/drives/drivers.dart';
import 'package:flutter_web_dasboard/pages/login/login.dart';
import 'package:flutter_web_dasboard/pages/overview/overview.dart';
import 'package:flutter_web_dasboard/routes/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overViwPageRoute:
      return _pageRoute(const OverviewPage());
    case driversPageRoute:
      return _pageRoute(const DriversPage());
    case clientsPageRoute:
      return _pageRoute(const ClientsPage());
    case authenticationPageRoute:
    case "Log Out":
      return _pageRoute(const LoginPage());
    default:
      return _pageRoute(const OverviewPage());
  }
}

PageRoute _pageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
