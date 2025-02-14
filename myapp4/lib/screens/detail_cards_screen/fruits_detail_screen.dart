import 'package:flutter/material.dart';
import 'package:myapp4/data/fruits_product_data.dart';

class FruitsDetailScreen extends StatefulWidget {
  final int index;
  FruitsDetailScreen({super.key, required this.index});

  @override
  State<FruitsDetailScreen> createState() => _FruitsDetailScreenState();
}

class _FruitsDetailScreenState extends State<FruitsDetailScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            //padding: EdgeInsets.only(top: 200),
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: BoxDecoration(
              color: const Color.fromARGB(214, 7, 7, 7),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.30,
                      width: MediaQuery.of(context).size.width * 1.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                        child: Image.asset(
                          fruitsproductdata[widget.index].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Row(
                    children: [
                      Text(fruitsproductdata[widget.index].name,
                          style: TextStyle(
                              fontSize: 42,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Row(
                    children: [
                      Text("Description",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Row(
                    children: [
                      Text(fruitsproductdata[widget.index].description,
                          style: TextStyle(fontSize: 22, color: Colors.white)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Row(
                    children: [
                      Text("Quantatity",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 5),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            counter++;
                          });
                        },
                        icon: Icon(Icons.add),
                        color: Colors.white,
                      ),
                      Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 235, 197, 183),
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                            child: Text(
                          "$counter",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 14),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              counter--;
                            });
                          },
                          icon: Icon(Icons.minimize),
                          color: Colors.white,
                          iconSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 240, 198, 183),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
