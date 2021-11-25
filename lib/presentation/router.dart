import 'package:counter_on_steroids/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'pages/decrement_page.dart';
import 'pages/increment_page.dart';

class CustomRouter {
  static const incrementRoute = '/increment';
  static const decrementRoute = '/decrement';
  static const homeRoute = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case incrementRoute:
        return MaterialPageRoute(builder: (_) => const IncrementPage());
      case decrementRoute:
        return MaterialPageRoute(builder: (_) => const DecrementPage());
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
}
