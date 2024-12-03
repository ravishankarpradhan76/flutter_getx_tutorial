import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_getx_tutorial/counter_controller.dart';
import 'package:get/get.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({Key? key}) : super(key: key);

  @override
  State<CounterExample> createState() => _NewPageState();
}

class _NewPageState extends State<CounterExample> {


  final CounterController controller = Get.put(CounterController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Tutorial'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx((){
          print('Rebuild');
          return Text(controller.counter.toString(), // Display the value of x
            style: TextStyle(fontSize: 60),);
      }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.IncrementCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
