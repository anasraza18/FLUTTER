import 'package:flutter/material.dart';

class favorite extends StatefulWidget {
  const favorite({super.key});

  @override
  State<favorite> createState() => _favoriteState();
}

class _favoriteState extends State<favorite> {
  bool isfav = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        onPressed: () {
          setState(() {
            isfav = !isfav;
          });
        },
        icon: Icon(
          Icons.favorite,
          color: isfav ? Colors.red : const Color.fromARGB(255, 250, 243, 177),
        ),
        iconSize: 24,
      ),
    );
  }
}
