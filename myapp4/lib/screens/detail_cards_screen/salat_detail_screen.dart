import 'package:flutter/material.dart';
import 'package:myapp4/data/salat_product_data.dart';

class SalatDetailScreen extends StatefulWidget {
  final int index;
  SalatDetailScreen({super.key, required this.index});

  @override
  State<SalatDetailScreen> createState() => _SalatDetailScreenState();
}

class _SalatDetailScreenState extends State<SalatDetailScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 198, 183),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.9, // Adjust height as needed
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    // Card
                    Positioned(
                      top: MediaQuery.of(context).size.height *
                          0.15, // 30% overlap
                      child: Padding(
                        padding: const EdgeInsets.only(top: 70),
                        child: Card(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.6,
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20, top: 80),
                                  child: Row(
                                    children: [
                                      Text(salatproductdata[widget.index].name,
                                          style: TextStyle(
                                              fontSize: 42,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 5, right: 10),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 240,
                                        child: Center(
                                          child: Text(
                                              salatproductdata[widget.index]
                                                  .description,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, top: 20, right: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Quantatity",
                                          style: TextStyle(
                                              fontSize: 32,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                      Row(
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
                                            width: 10,
                                            decoration: BoxDecoration(
                                                // color: Color.fromARGB(255, 235, 197, 183),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: Center(
                                                child: Text(
                                              "$counter",
                                              style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            )),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 14),
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
                                      backgroundColor: const Color.fromARGB(
                                          255, 240, 198, 183),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Image
                    Positioned(
                      top: 0,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.35,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(130),
                          child: Image.asset(
                            salatproductdata[widget.index].image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
