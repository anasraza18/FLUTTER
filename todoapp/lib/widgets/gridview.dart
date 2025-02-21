import 'package:flutter/material.dart';
import 'package:todoapp/data/button_data.dart';

class gridviewcal extends StatefulWidget {
  final Function(String) updateDisplay;
  gridviewcal({super.key, required this.updateDisplay});

  @override
  State<gridviewcal> createState() => _GridviewState();
}

class _GridviewState extends State<gridviewcal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      width: 350,
      color: Colors.black,
      child: GridView.builder(
          itemCount: button.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisExtent: 100,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5),
          itemBuilder: (context, index) {
            return ElevatedButton(
              onPressed: () {
                widget.updateDisplay(button[index]);
              },
              child: Text(
                button[index],
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
            );
          }),
    );
  }
}
