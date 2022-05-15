import 'package:bases_web/UI/shared/custom_flatbutton.dart';
import 'package:flutter/material.dart';

class View404 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '404',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'No se encontro la pagina',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        CustomFlatButton(
            text: 'Regresar',
            onPresed: () => Navigator.pushNamed(context, '/counter')),
      ],
    ));
  }
}
