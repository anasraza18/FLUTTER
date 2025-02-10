import 'package:flutter/material.dart';

class Counterweidget extends StatefulWidget {
  const Counterweidget({super.key});

  @override
  State<Counterweidget> createState() => _CounterweidgetState();
}

class _CounterweidgetState extends State<Counterweidget> {
  int counter = 0;
  bool changecolor = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: changecolor ? Colors.red : Colors.blue,
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
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                  changecolor = true;
                });
              },
              child: Text(
                "Add",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter--;
                  changecolor = false;
                });
              },
              child: Text(
                "Minus",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter = 0;
                  changecolor = true;
                });
              },
              child: Text(
                "Reset",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
