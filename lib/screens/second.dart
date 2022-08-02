import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../state/cart.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final cart = Provider.of<Cart>(context, listen: true);

    return Consumer<Cart>(
      builder: (context, cart, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Second Screen"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text('${context.watch<Cart>().count}'),
                Text(
                  '${cart.count}',
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const SizedBox(
                  height: 18,
                ),
                // Text('${context.watch<Cart>().cart}'),
                Text('${cart.cart}',
                    style:
                        const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              // context.read<Cart>().addItem("Yellow");
              cart.addItem("Yellow");
            },
          ),
        );
      },
    );
  }
}
