import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../state/cart.dart';
import '../state/counter_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Counter>(
      builder: (context, counter, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Home'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text('${cart.cart}'),
                // Text('${context.watch<Cart>().cart}'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('The Number : '),
                    // Text('${context.watch<Counter>().count}'),
                    Text('${counter.count}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/second');
                    },
                    child: Text("Open Screen"))
              ],
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new FloatingActionButton(
                heroTag: null,
                onPressed: () {
                  // context.read<Counter>().incrementCounter();
                  counter.incrementCounter();
                },
                child: Icon(Icons.add),
              ),
              SizedBox(
                width: 5,
              ),
              new FloatingActionButton(
                heroTag: null,
                onPressed: () {
                  // context.read<Counter>().resetCounter();
                  counter.resetCounter();
                },
                child: Icon(Icons.refresh),
              ),
              SizedBox(
                width: 5,
              ),
              new FloatingActionButton(
                heroTag: null,
                onPressed: () {
                  // context.read<Counter>().decrementCounter();
                  counter.decrementCounter();
                },
                child: Icon(Icons.remove),
              ),
            ],
          ),
        );
      },
    );
  }
}
