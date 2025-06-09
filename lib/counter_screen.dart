import 'package:flutter/material.dart';

import 'counter.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  Counter counter = Counter();


  void incCounter(){
    setState(() {
      counter.incrementCounter();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('counter'),),
      body: SafeArea(child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.cyan,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,          children: [
          Text("count is -- ${counter.count}", style: TextStyle(color:Colors.red, fontSize:22),),  SizedBox(height: 20,),


          ElevatedButton(
              key: Key('incKey'),
              onPressed: (){  incCounter();  },
              child: Text("Counter + "))
        ],
        ),
      )),
    );
  }
}

