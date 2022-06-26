import 'package:flutter/material.dart';

//Providers
import 'package:bases_web/providers/counter_provider.dart';
//file addresses
import 'package:bases_web/UI/shared/shared.dart';
import 'package:provider/provider.dart';

class CounterProviderPage extends StatelessWidget {
  const CounterProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CounterProvider(),
        child: const _CounterProviderPageBody());
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  const _CounterProviderPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Instancia del provider.
    final counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomAppMenu(),

          const Text(
            'Contador Provider',
            style: TextStyle(fontSize: 20),
          ),

           FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Contador: ${counterProvider.counter}',
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
              CustomFlatButton(text: 'Incrementar', 
                onPresed: () => counterProvider.increment()
              ),
              CustomFlatButton(
                text: 'Decrementar',
                onPresed: () => counterProvider.decrement(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
