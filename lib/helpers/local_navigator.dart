import 'package:flutter/cupertino.dart';
import 'package:flutter_web_dasboard/routes/routes.dart';
import 'package:flutter_web_dasboard/shared/constants/controllers.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigatorKey,
      initialRoute: overViwPageRoute,
    );
