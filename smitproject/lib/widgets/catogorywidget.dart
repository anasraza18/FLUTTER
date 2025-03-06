import 'package:flutter/material.dart';
import 'package:smitproject/data/catagorydata.dart';

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
        itemCount: catogory.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 243, 233, 202),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      catogory[index]['icon'],
                      size: 40,
                      color: Color.fromARGB(255, 236, 106, 45),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(catogory[index]['name'], style: TextStyle(fontSize: 16)),
              ],
            ),
          );
        },
      ),
    );
  }
}
