import 'package:flutter/material.dart';
//file addresses
import 'package:bases_web/UI/shared/custom_app_menu.dart';

class MainLayoutPage extends StatelessWidget {
  final Widget child;

  const MainLayoutPage({
    Key? key, required this.child
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const CustomAppMenu(),
            const Spacer(),
            Expanded(child: child),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
