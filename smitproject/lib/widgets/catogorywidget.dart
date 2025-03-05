import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class Catogorywidget extends StatefulWidget {
  const Catogorywidget({super.key});

  @override
  State<Catogorywidget> createState() => _CatogorywidgetState();
}

class _CatogorywidgetState extends State<Catogorywidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 243, 233, 202),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(LucideIcons.salad, size: 40),
                  ),
                ),
                SizedBox(height: 5),
                Text("Snacks", style: TextStyle(fontSize: 16)),
              ],
            ),
          );
        },
      ),
    );
  }
}
