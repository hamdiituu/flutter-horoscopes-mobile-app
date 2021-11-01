import 'package:flutter/material.dart';
import 'package:flutter_horoscope_app/models/horoscope_model.dart';
import 'package:flutter_horoscope_app/screens/detail_screen.dart';
import 'package:flutter_horoscope_app/screens/home_screen.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case DetailScreen.routeName:
        final model = settings.arguments as HoroscopeModel;
        return MaterialPageRoute(
            builder: (context) => DetailScreen(model: model));
      default:
        return MaterialPageRoute(builder: (context) => HomeScreen());
    }
  }
}
