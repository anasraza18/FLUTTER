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
        Text(
          "$counter",
          style: TextStyle(
            fontSize: 32,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          child: Text("Add"),
        ),
      ],
    );
  }
}
