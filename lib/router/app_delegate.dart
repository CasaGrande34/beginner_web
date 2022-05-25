import 'package:bases_web/router/app_path.dart';
import 'package:bases_web/router/router_page_manager.dart';
import 'package:bases_web/screens/screen1.dart';
import 'package:flutter/material.dart';

//provider
import 'package:provider/provider.dart';



class MyAppRouterDelegate extends RouterDelegate<MyAppPath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  final RouterPageManager _pageManager = RouterPageManager();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _pageManager,
      child: Navigator(
        pages: [
          MaterialPage(key: ValueKey('/prueba'), child: Screen1()),
        ],
        onPopPage: (route, result) => route.didPop(result),
      ),
    );
  }

  @override
  GlobalKey<NavigatorState>? get navigatorKey => _navigatorKey;

  @override
  Future<void> setNewRoutePath(MyAppPath configuration) async {
    //TODO:
  }
}
