import 'package:bases_web/UI/shared/custom_flatbutton.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            color: Colors.black,
            text: 'Pagina Counter', 
            onPresed: () => Navigator.pushNamed(context, '/counter')
          ),
          const SizedBox(width: 10,),
          CustomFlatButton(
            text: 'Pagina Provider', 
            color: Colors.black,
            onPresed: () => Navigator.pushNamed(context, '/provider') 
          ),
          const SizedBox(width: 10,),
          CustomFlatButton(
            color: Colors.black,
            text: 'Otra pagina', 
            onPresed: () => Navigator.pushNamed(context, 'ABC123')
          ),
        ],
      ),
    );
  }
}
