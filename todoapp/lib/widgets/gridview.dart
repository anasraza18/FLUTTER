import 'package:flutter/material.dart';

class gridviewcal extends StatefulWidget {
  gridviewcal({super.key});

  @override
  State<gridviewcal> createState() => _GridviewState();
}

class _GridviewState extends State<gridviewcal> {
  List button = [
    // Text("AC"),
    // Text("%"),
    // Icon(Icons.cut),
    // Text("/"),
    // Text("7"),
    // Text("8"),
    // Text("9"),
    // Text("X"),
    // Text("4"),
    // Text("5"),
    // Text("6"),
    // Icon(Icons.minimize),
    // Text("1"),
    // Text("2"),
    // Text("3"),
    // Icon(Icons.add),
    // Text("00"),
    // Text("0"),
    // Text("."),
    // Text("="),
    ElevatedButton(
      onPressed: () {},
      child: Text("AC"),
    ),
    ElevatedButton(
      onPressed: () {},
      child: Text("%"),
    ),
    ElevatedButton(
      onPressed: () {},
      child: Text("x"),
    ),
    ElevatedButton(
      onPressed: () {},
      child: Text("/"),
    ),
    ElevatedButton(
      onPressed: () {},
      child: Text("7"),
    ),
    ElevatedButton(
      onPressed: () {},
      child: Text("8"),
    ),
    ElevatedButton(
      onPressed: () {},
      child: Text("9"),
    ),
    ElevatedButton(
      onPressed: () {},
      child: Text("X"),
    ),
    ElevatedButton(
      onPressed: () {},
      child: Text("4"),
    ),
    ElevatedButton(
      onPressed: () {},
      child: Text("5"),
    ),
    ElevatedButton(
      onPressed: () {},
      child: Text("6"),
    ),
    ElevatedButton(
      onPressed: () {},
      child: Text("_"),
    ),
    ElevatedButton(
      onPressed: () {},
      child: Text("1"),
    ),
    ElevatedButton(
      onPressed: () {},
      child: Text("2"),
    ),
    ElevatedButton(
      onPressed: () {},
      child: Text("3"),
    ),

    ElevatedButton(
      onPressed: () {},
      child: Text("+"),
    ),

    ElevatedButton(
      onPressed: () {},
      child: Text("00"),
    ),
    ElevatedButton(
      onPressed: () {},
      child: Text("0"),
    ),

    ElevatedButton(
      onPressed: () {},
      child: Text("."),
    ),

    ElevatedButton(
      onPressed: () {},
      child: Text("="),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 350,
      color: Colors.amber,
      child: GridView.builder(
          itemCount: button.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisExtent: 100,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5),
          itemBuilder: (context, index) {
            return button[index];
          }),
    );
  }
}
