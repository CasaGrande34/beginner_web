import 'package:flutter/material.dart';

import 'prueba_navigator/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late String currentItem;
  @override
  Widget build(BuildContext context) {
    // return MaterialApp.router(
    return BooksApp();
    // routeInformationParser: RInformationParse(),
    // routerDelegate: Route,

    // initialRoute: '/counter',
    // routes:
    //   {
    //   '/counter' : (context) => const CounterPage(),
    //   '/provider' : (context) => const CounterProviderPage(),

    //   },
    // onGenerateRoute: RouteGenerator.generateRoute,
    // builder: (_, child) {
    //   return MainLayoutPage(
    //     child: child!,
    //   );
    // },
  }
}
