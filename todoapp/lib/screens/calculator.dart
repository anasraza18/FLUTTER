import 'package:flutter/material.dart';
import 'package:todoapp/widgets/gridview.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String displayText = "0";

  // Yeh function expression evaluate karta hai (supports single operator expressions)
  String evaluateExpression(String expression) {
    double num1 = 0.0;
    double num2 = 0.0;
    String operator = "";
    // Operators list
    List<String> operators = ["+", "-", "X", "/"];
    for (var op in operators) {
      if (expression.contains(op)) {
        operator = op;
        List<String> parts = expression.split(op);
        if (parts.length >= 2) {
          num1 = double.tryParse(parts[0]) ?? 0.0;
          num2 = double.tryParse(parts[1]) ?? 0.0;
        }
        break;
      }
    }
    double result = 0.0;
    switch (operator) {
      case "+":
        result = num1 + num2;
        break;
      case "-":
        result = num1 - num2;
        break;
      case "X":
        result = num1 * num2;
        break;
      case "/":
        result = num2 != 0 ? num1 / num2 : 0;
        break;
      default:
        return expression;
    }
    // Agar result integer value hai, to integer form mein return karo
    if (result == result.toInt()) {
      return result.toInt().toString();
    } else {
      return result.toString();
    }
  }

  void updateDisplay(String text) {
    setState(() {
      if (text == "AC") {
        displayText = "0";
      } else if (text == "=") {
        // Evaluate expression and update display
        displayText = evaluateExpression(displayText);
      } else {
        // Agar display mein "0" hai, to replace karo, warna append karo.
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
