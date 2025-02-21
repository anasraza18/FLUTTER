import 'package:flutter/material.dart';
import 'package:todoapp/data/button_data.dart';

class gridviewcal extends StatefulWidget {
  gridviewcal({super.key});

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
            return button[index];
          }),
    );
  }
}
