import 'package:flutter/material.dart';

class CounterExampletwo extends StatefulWidget {
  const CounterExampletwo({Key?key}): super(key: key);

  @override
  State<CounterExampletwo> createState() => _CounterExampletwoState();
}

class _CounterExampletwoState extends State<CounterExampletwo> {
  double opacity = .4;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Column(
        children: [
        Container(
          height: 200,
          width: 200,
          color: Colors.red.withOpacity(opacity),
        ),
          Slider(value: opacity, onChanged: (value){

          })
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){

          }),
    );
  }
}

