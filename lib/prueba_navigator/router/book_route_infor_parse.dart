import 'package:bases_web/prueba_navigator/router/book_path.dart';
import 'package:flutter/cupertino.dart';

class BookRouteInformationParser extends RouteInformationParser {
  @override
  Future<BookPath> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location);
    if (uri.pathSegments.isEmpty) {
          

        }
  }
}