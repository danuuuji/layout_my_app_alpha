import 'package:flutter/material.dart';
import 'package:layout_my_app_alpha/widgets/auth/auth.dart';
import 'package:layout_my_app_alpha/widgets/main_screen/main_screen.dart';

abstract class MainNavigationRouteNames {
  static const auth = 'auth';
  static const mainScreen = '/';
}

class MainNavigation {
  // String initialRoute(bool isAuth) => isAuth
  //     ? MainNavigationRouteNames.mainScreen
  //     : MainNavigationRouteNames.auth;
  String initialRoute() => MainNavigationRouteNames.auth;
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.auth: (context) => const AuthWidget(),
    //AuthProvider(model: AuthModel(), child: cons AuthWidget()),
    MainNavigationRouteNames.mainScreen: (context) => const MainScreenWidget(),
  };
}
