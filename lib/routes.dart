import 'package:clean_routing/splash_screen.dart';
import 'package:clean_routing/second_page.dart';
import 'package:clean_routing/third_page.dart';
import 'package:flutter/material.dart';

import 'route_names.dart';

class Routes {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splashScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SplashScreen(),
        );
      case RouteName.secondPage:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SecondPage(),
        );
      case RouteName.thirdPage:
        final DummyModelData dummyModelData =
            settings.arguments as DummyModelData;

        return MaterialPageRoute(
          builder: (BuildContext context) => ThirdPage(
            dummyModelData: dummyModelData,
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) {
            return const Scaffold(
              body: Center(
                child: Text('No route defined'),
              ),
            );
          },
        );
    }
  }
}
