import 'package:bases_web/screens/screen1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RouterPageManager extends ChangeNotifier {
  static RouterPageManager of(BuildContext context) {
    return Provider.of<RouterPageManager>(context, listen: false);
  }

  final List<Page> _pages = [

    const MaterialPage(
      key: ValueKey('/'),
      child: Screen1(),
    ),


  ];
// List<Page> get pages List.unmodifiable(_pages);

// void openDetails(String id){
//   _pages.add(
//     //  MaterialPage
//     //   key:ValueKey(""),
//     //   child:(),
//   );
 
// }
}