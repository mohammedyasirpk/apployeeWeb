// ignore_for_file: unused_import

import 'package:apployee/routes/route_name.dart';
import 'package:apployee/screens/backup.dart';
import 'package:apployee/screens/homescreen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route<dynamic> routeSetting(RouteSettings setting) {
    switch (setting.name) {
      case RouteName.homescreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      // case RouteName.dashboardscreen:
      //   return MaterialPageRoute(
      //     builder: (context) => const DashboardScreen(),
      //   );

      default:
        {
          return MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          );
        }
    }
  }
}
