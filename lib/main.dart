import 'package:bases_web/router/app_delegate.dart';
import 'package:flutter/material.dart';

//file addresses
import '../router/app_infor_parse.dart';



void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      title: 'Navigator 2.0',
      routeInformationParser: MyAppInformationParser(),
      routerDelegate: MyAppRouterDelegate(),
      // backButtonDispatcher: ,
      
    );
  }
}
