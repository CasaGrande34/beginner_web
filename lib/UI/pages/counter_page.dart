import 'package:flutter/material.dart';

//file addresses
import 'package:bases_web/UI/shared/shared.dart';


class CounterPage extends StatefulWidget {

  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  /*	------------------------------------- */
  int counter = 10;
  /*	------------------------------------- */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomAppMenu(),

          const Text('Contador Stateful', style: TextStyle(fontSize: 20),),


          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Contador: $counter',
                style: const TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          /*	------------------------------------- */ 
          //Botones
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                text: 'Incrementar',
                onPresed: () =>setState((() => counter++ ) ,
                ),
              ),
              CustomFlatButton(
                text: 'Decrementar',
                onPresed: () =>setState((() => counter-- ) ,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
