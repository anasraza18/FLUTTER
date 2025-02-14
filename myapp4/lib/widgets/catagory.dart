import 'package:flutter/material.dart';

class Catagory extends StatefulWidget {
  const Catagory({super.key});

  @override
  State<Catagory> createState() => _CatagoryState();
}

class _CatagoryState extends State<Catagory> {
  bool changecolor1 = false;
  bool changecolor2 = false;
  bool changecolor3 = false;
  bool changecolor4 = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 35,
            width: 50,
            decoration: BoxDecoration(
                color: changecolor1
                    ? const Color.fromARGB(255, 236, 171, 148)
                    : const Color.fromARGB(255, 247, 244, 244),
                //
                borderRadius: BorderRadius.circular(8)),
            child: TextButton(
              onPressed: () {
                setState(() {
                  changecolor1 = !changecolor1;
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => ProductGridScreen(),
                  //   ),
                  // );
                });
              },
              child: Center(
                child: Text(
                  "All",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Container(
            height: 35,
            width: 70,
            decoration: BoxDecoration(
                color: changecolor2
                    ? const Color.fromARGB(255, 236, 171, 148)
                    : const Color.fromARGB(255, 247, 244, 244),
                borderRadius: BorderRadius.circular(8)),
            child: TextButton(
              onPressed: () {
                setState(() {
                  changecolor2 = !changecolor2;
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => FruitsProductGv(),
                  //   ),
                  // );
                });
              },
              child: Center(
                child: Text(
                  "Fruits",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Container(
            height: 35,
            width: 100,
            decoration: BoxDecoration(
                color: changecolor3
                    ? const Color.fromARGB(255, 236, 171, 148)
                    : const Color.fromARGB(255, 247, 244, 244),
                borderRadius: BorderRadius.circular(8)),
            child: TextButton(
              onPressed: () {
                setState(() {
                  changecolor3 = !changecolor3;
                });
              },
              child: Center(
                child: Text(
                  "Vegetables",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Container(
            height: 35,
            width: 70,
            decoration: BoxDecoration(
                color: changecolor4
                    ? const Color.fromARGB(255, 236, 171, 148)
                    : const Color.fromARGB(255, 247, 244, 244),
                borderRadius: BorderRadius.circular(8)),
            child: TextButton(
              onPressed: () {
                setState(() {
                  changecolor4 = !changecolor4;
                });
              },
              child: Center(
                child: Text(
                  "Salat",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
