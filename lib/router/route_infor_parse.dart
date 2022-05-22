import 'package:bases_web/router/route_path.dart';
import 'package:flutter/material.dart';

class RInformationParse extends RouteInformationParser<RoutePath> {


  //Parseo de ruta para la web
  @override
  Future<RoutePath> parseRouteInformation(RouteInformation routeInformation) async {

    final uri = Uri.parse(routeInformation.location!);

    if (uri.pathSegments.isEmpty) {
      return RoutePath.home();
    }

    return RoutePath.unknown();
  }

  
  @override
  RouteInformation? restoreRouteInformation(RoutePath path) {
    if (path.isUnknown) {
      return RouteInformation(location: '/404');
    }
    if (path.isHomePage) {
      return RouteInformation(location: '/');
    }
    return null;
  }
}
