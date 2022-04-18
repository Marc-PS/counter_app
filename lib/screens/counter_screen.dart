import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {

    TextStyle textStyle = TextStyle(fontSize: 30);
    int counter = 0;

    return  Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        centerTitle: true,
        elevation: 0.5,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  <Widget> [
              Text('Clicks Counter', style: textStyle),
              Text('0', style: textStyle)
            ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => counter++ 
      
      ),
    );
  }
}