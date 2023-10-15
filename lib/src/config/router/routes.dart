import 'package:flutter/material.dart';
import 'package:hospital/src/features/dashboard/presentation/screens/dashboard_screen.dart';

class AppRoutes {
  static const String homeRoute = "/";
  static const String labRoute = "/lab";
  static const String doctorRoute = "/doctor";
  static const String reportRoute = "/report";
  static const String resultRoute = "/result";
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      default:
        return MaterialPageRoute(builder: (_) => const DashboardScreen());
    }
  }
}