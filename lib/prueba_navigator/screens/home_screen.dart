import 'package:bases_web/prueba_navigator/screens/screen3.dart';
import 'package:flutter/material.dart';

//file addresses
import '../widgets/book.dart';
import 'book_list_screen.dart';
import 'transition_page.dart';
import 'unkdowmn_screen.dart';

class BooksApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BooksAppState();
}

class _BooksAppState extends State<BooksApp> {
  Book? _selectedBook;

  List<Book> books = [
    Book('Left Hand of Darkness', 'Ursula K. Le Guin'),
    Book('Cuando el gato no está, los ratones bailan', 'Gertrudiz Perez'),
    Book('Ta fresco pa chomba', 'Martin Fierro'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Books App',
      routeInformationParser: BookRouteInformationParser(),
      routerDelegate: ,
      backButtonDispatcher: ,
      
    );
  }

    void _handleBookTapped(Book book) {
    setState(() {
      _selectedBook = book;
    });
  }

}
