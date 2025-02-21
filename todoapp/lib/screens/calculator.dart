import 'package:flutter/material.dart';
import 'package:todoapp/widgets/gridview.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 100,
                width: 350,
                color: Colors.red,
                child: TextFormField(
                  decoration: InputDecoration(),
                ),
              ),
            ],
          ),
          Row(
            children: [
              gridviewcal(),
            ],
          ),
        ],
      ),
    );
  }
}
