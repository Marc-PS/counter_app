import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  void increase() => setState(() => counter++);
  void decrease()  => setState(() => counter--);
  void reset()  => setState(() => counter = 0);

  @override
  Widget build(BuildContext context) {

    TextStyle textStyle = TextStyle(fontSize: 30);
    
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
              Text('$counter', style: textStyle)
            ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFAB(
        decreaseFn: decrease, 
        increaseFn: increase, 
        resetFn: reset,
        ),
    );
  }
}

class CustomFAB extends StatelessWidget {

  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFAB({ Key? key, required this.increaseFn, required this.decreaseFn, required this.resetFn }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => decreaseFn()
        ),

        const SizedBox(width: 30),

         FloatingActionButton(
          child: const Icon(Icons.exposure_zero_outlined),
          onPressed: () => resetFn()
        ),

        const SizedBox(width: 30),

         FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          onPressed: () => increaseFn()
        ),
      ],
    );
  }
}