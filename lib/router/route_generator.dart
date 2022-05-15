import 'package:bases_web/UI/views/counter_view.dart';
import 'package:bases_web/UI/views/views.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

//file addresses
import 'package:bases_web/UI/pages/pages.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/counter':
        return _fadeRoute(CounterView(), '/counter');

      case '/provider':
        return _fadeRoute(CounterProviderView(), '/provider');

      default:
        return _fadeRoute(View404(), '/404');    }
  }

// Transition
  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      pageBuilder: (_, __, ___) => child,
      transitionDuration: const Duration(milliseconds: 200),
      transitionsBuilder: (_, animation, __, ___) => 
      (kIsWeb)?      
      FadeTransition(
        opacity: animation,
        child: child,
      ) :
      CupertinoPageTransition(primaryRouteAnimation: animation, secondaryRouteAnimation: __, child: child, linearTransition: true),

    );
  }
}
