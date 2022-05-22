import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../UI/pages/pages.dart';

class RouteManager extends ChangeNotifier {
  /*	------------------------------------- */
  //Metodo OF
  static RouteManager of(BuildContext context) {
    return Provider.of<RouteManager>(context, listen: false);
  }

  /*	------------------------------------- */
  final List<Page> _pages = [
    //page inicial
    const MaterialPage(
      key: ValueKey('/counter'),
      child: CounterPage(),
    ),
  ];
  /*	------------------------------------- */
  List<Page> get pages => List.unmodifiable(_pages);

  /*	------------------------------------- */
  void openDetails() {
    _pages.add(
      const MaterialPage(
        key: ValueKey('/provider'),
        child: CounterProviderPage(),
      ),
    );
    notifyListeners();
  }

  void didPop(Page page) {
    _pages.remove(page);
    notifyListeners();
  }
}
