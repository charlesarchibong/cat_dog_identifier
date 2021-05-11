import 'package:cat_dog_identifier/core/navigation/route_names.dart';
import 'package:cat_dog_identifier/features/classifier/presentation/pages/home_page.dart';
import 'package:cat_dog_identifier/splash_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.splashScreen:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: MySplashScreen(),
      );
    case Routes.homePage:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: HomePage(),
      );

    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}

PageRoute _getPageRoute({String routeName, Widget viewToShow}) {
  return MaterialPageRoute(
    settings: RouteSettings(
      name: routeName,
    ),
    builder: (_) => viewToShow,
  );
}
