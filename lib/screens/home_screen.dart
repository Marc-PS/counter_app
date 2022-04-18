import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    TextStyle textStyle = TextStyle(fontSize: 30);

    return  Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
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
      floatingActionButton: FloatingActionButton(
        onPressed: null 
      
      ),
    );
  }

}