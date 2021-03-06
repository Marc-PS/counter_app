import 'package:counter_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:counter_app/screens/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterScreen()
      //const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
