import 'package:clean_routing/first_page.dart';
import 'package:clean_routing/second_page.dart';
import 'package:clean_routing/third_page.dart';
import 'package:flutter/material.dart';

import 'route_names.dart';

class Routes {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.firstPage:
        return MaterialPageRoute(
          builder: (BuildContext context) => const FirstPage(),
        );
      case RouteName.secondPage:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SecondPage());
      case RouteName.thirdPage:
        final Map<String, dynamic> arguments =
            settings.arguments as Map<String, dynamic>;
        final DummyModelData dummyModelData =
            arguments['dummyModelData'] as DummyModelData;
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
