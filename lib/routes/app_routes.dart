import 'package:flutter/material.dart';
import 'package:rumor_radar/presentation/results_false_tab_container_screen/results_false_tab_container_screen.dart';
import 'package:rumor_radar/presentation/results_true_screen/results_true_screen.dart';
import 'package:rumor_radar/presentation/splash_screen/splash_screen.dart';
import 'package:rumor_radar/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:rumor_radar/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:rumor_radar/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:rumor_radar/presentation/dectector_screen/dectector_screen.dart';
import 'package:rumor_radar/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String resultsFalsePage = '/results_false_page';

  static const String resultsFalseTabContainerScreen =
      '/results_false_tab_container_screen';

  static const String resultsTrueScreen = '/results_true_screen';

  static const String splashScreen = '/splash_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String dectectorScreen = '/dectector_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    resultsFalseTabContainerScreen: (context) =>
        ResultsFalseTabContainerScreen(),
    resultsTrueScreen: (context) => ResultsTrueScreen(),
    splashScreen: (context) => SplashScreen(),
    signUpScreen: (context) => SignUpScreen(),
    signInScreen: (context) => SignInScreen(),
    dashboardScreen: (context) => DashboardScreen(),
    dectectorScreen: (context) => DectectorScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
