import 'package:flutter/material.dart';
//file addresses
import 'package:bases_web/UI/shared/custom_flatbutton.dart';

class Page404 extends StatelessWidget {
  const Page404({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text('404', 
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10,),
            const Text('No se encontro la pagina',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            CustomFlatButton(
              text: 'Regresar', 
              onPresed: () => Navigator.pushNamed(context, '/counter')
            ),
            
          ],
        )
     ),
   );
  }
}