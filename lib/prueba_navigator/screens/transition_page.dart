import 'package:flutter/material.dart';

import '../widgets/book.dart';
import 'details_screen.dart';

class TransitionPAge extends Page {
  final Book book;
  
  TransitionPAge({
    required this.book,
  }) : super(key: ValueKey(book));
  
  Route createRoute(BuildContext context) {
    return PageRouteBuilder(
      settings: this,
      pageBuilder: (context, animation, animation2) {
        final tween = Tween(begin: Offset(0.0, 1.0), end: Offset.zero);
        final curveTween = CurveTween(curve: Curves.easeInOut);
        return SlideTransition(
          position: animation.drive(curveTween).drive(tween),
          child: BookDetailsScreen(
            key: ValueKey(book),
            book: book,
          ),
        );
      },
    );
  }
}