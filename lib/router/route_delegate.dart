import 'package:bases_web/UI/pages/counter_page.dart';
import 'package:bases_web/router/route_page_manager.dart';
import 'package:bases_web/router/route_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RDelegate extends RouterDelegate<RoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  /*	------------------------------------- */ 
  final RouteManager _manager = RouteManager();

  RDelegate() {
    _manager.addListener(notifyListeners);
  }
  /*	------------------------------------- */
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();
  /*	------------------------------------- */
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _manager,
      child: Consumer<RouteManager>(
        builder: (context, routemanager, child) {
          return Navigator(
            pages: List.of(_manager.pages)
            // onPopPage: _onPopPage
          ); 
        },
      ),
    );
  }



  /*	------------------------------------- */
  @override
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  /*	------------------------------------- */
  @override
  Future<void> setNewRoutePath(RoutePath configuration) async {}

  /*	------------------------------------- */   
  // bool _onPopPage(Route route, result) {
  //   final didPop = route.didPop(result);
  //   if(!didPop) {
  //     return false;
  //   }
  //   _manager.didPop(route.settings);
  //   return true;
  // }

}
