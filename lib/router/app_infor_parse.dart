import 'package:flutter/cupertino.dart';

import 'app_path.dart';

class MyAppInformationParser extends RouteInformationParser<MyAppPath> {
  @override
  Future<MyAppPath> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location!);

    if (uri.pathSegments.isEmpty) {
      return MyAppPath.home();
    }

    return MyAppPath.unknown();
  }

  @override
  RouteInformation? restoreRouteInformation(MyAppPath path) {
    if (path.isUnknown) {
      return RouteInformation(location: '/404');
    }
    if (path.isHome) {
      return RouteInformation(location: '/');
    }
    return null;
  }
}
