import 'package:flutter/material.dart';
import 'package:todoapp/widgets/gridview.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String displayText = "0";

  void updateDisplay(String text) {
    setState(() {
      if (text == "AC") {
        displayText = "0";
      } else {
        displayText = displayText == "0" ? text : displayText + text;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 50, bottom: 40, top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  displayText,
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5, left: 5),
            child: Row(
              children: [
                gridviewcal(
                  updateDisplay: updateDisplay,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
