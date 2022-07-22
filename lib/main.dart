import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(const MyApp());
}
// steps to use Provider statemanagement:
//1- add provider package to your pubspec.yaml
//2- create your model => in this example "counter_provider"
//3-wrap your home / material App widget with Provider widget
//4- wrap the widget which change the state on it with consumer Widget in

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ValueNotifier<int>>(
      create: (context) => ValueNotifier<int>(0),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final count = Provider.of<ValueNotifier<int>>(context, listen: false);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Consumer<ValueNotifier<int>>(
                builder: (context, count, child) => Text(
                      '${count.value}',
                      style: Theme.of(context).textTheme.headline4,
                    )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => count.value++,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
