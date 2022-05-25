import 'package:bases_web/screens/screen1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RouterPageManager extends ChangeNotifier {
  static RouterPageManager of(BuildContext context) {
    return Provider.of<RouterPageManager>(context, listen: false);
  }

  final List<Page> _pages = [

    MaterialPage(
      key: ValueKey('/'),
      child: Screen1(),
    ),


  ];
}
