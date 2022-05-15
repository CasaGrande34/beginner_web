import 'package:bases_web/UI/pages/counter_provider_page.dart';
import 'package:bases_web/router/route_generator.dart';
import 'package:flutter/material.dart';

//FileAddresses
import 'package:bases_web/UI/pages/pages.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'RutasApp',
      initialRoute: '/counter',
      // routes: 
      //   {
      //   '/counter' : (context) => const CounterPage(),
      //   '/provider' : (context) => const CounterProviderPage(),
        
      //   },
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}