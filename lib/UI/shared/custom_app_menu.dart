import 'package:flutter/material.dart';
//file addresses
import 'package:bases_web/UI/shared/custom_flatbutton.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const _AppBarMenuMobile();
        } else {
          return const _AppBarMenuWeb();
        }
      }
    );
  }
}


class _AppBarMenuWeb extends StatelessWidget {
  const _AppBarMenuWeb({
    Key? key,
  }) : super(key: key);

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

class _AppBarMenuMobile extends StatelessWidget {
  const _AppBarMenuMobile({
    Key? key,
  }) : super(key: key);

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
              onPresed: () => Navigator.pushNamed(context, '/counter')),
          const SizedBox(
            width: 10,
          ),
          CustomFlatButton(
              text: 'Pagina Provider',
              color: Colors.black,
              onPresed: () => Navigator.pushNamed(context, '/provider')),
          const SizedBox(
            width: 10,
          ),
          CustomFlatButton(
              color: Colors.black,
              text: 'Otra pagina',
              onPresed: () => Navigator.pushNamed(context, 'ABC123')),
        ],
      ),
    );
  }
}


