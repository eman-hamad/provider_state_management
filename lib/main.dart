import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/screens/home_page.dart';
import 'package:provider_state_management/screens/second.dart';
import 'package:provider_state_management/state/cart.dart';

import 'state/counter_provider.dart';

void main() {
  
  runApp(

    MultiProvider(
      
      providers:[
          ChangeNotifierProvider<Counter>(create: (_)=>Counter(),),
          ChangeNotifierProvider<Cart> (create: (_)=>Cart(),),

    ],
    child: MyApp(),
    ),
    
  );
}
// steps to use Provider statemanagement:
//1- add provider package to your pubspec.yaml
//2- create your model => in this example "counter_provider"
//3-wrap your home / material App widget with Provider widget
//4- wrap the widget which change the state on it with consumer Widget in

class MyApp extends StatelessWidget {
  


  @override
  Widget build(BuildContext context) {
    return 
       MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
       
        initialRoute: '/',
        routes: {
        '/' : (context) => HomePage(),
        '/second' :(context) => Second()


      },
      );
  }
}

