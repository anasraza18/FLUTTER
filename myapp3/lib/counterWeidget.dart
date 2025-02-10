import 'package:flutter/material.dart';

class Counterweidget extends StatefulWidget {
  const Counterweidget({super.key});

  @override
  State<Counterweidget> createState() => _CounterweidgetState();
}

class _CounterweidgetState extends State<Counterweidget> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.green,
          height: 50,
          width: 50,
          child: Center(
            child: Text(
              "$counter",
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              child: Text("Add"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter--;
                });
              },
              child: Text("Minus"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
              child: Text("Reset"),
            ),
          ],
        ),
      ],
    );
  }
}
