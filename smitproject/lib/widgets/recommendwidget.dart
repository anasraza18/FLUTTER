import 'package:flutter/material.dart';
import 'package:smitproject/data/recommenddata.dart';

class Recommendwidget extends StatefulWidget {
  const Recommendwidget({super.key});

  @override
  State<Recommendwidget> createState() => _RecommendwidgetState();
}

class _RecommendwidgetState extends State<Recommendwidget> {
  List<bool> fav = [];
  @override
  void initState() {
    super.initState();
    fav = List.generate(recommenddata.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Recommend",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
              itemCount: recommenddata.length,
              itemBuilder: (contex, index) {
                return Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(255, 243, 233, 202),
                        image: DecorationImage(
                          image: AssetImage(recommenddata[index]['image']),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10, // Move slightly up to overlap
                      left: 15,
                      right: 90,
                      bottom: 120,
                      child: Container(
                        // height: 60,
                        //width: 20,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: Row(
                          children: [
                            Center(
                              child: Text(
                                " ${recommenddata[index]['ratting'].toString()}",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.star, color: Colors.orange, size: 18),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 8, // Move slightly up to overlap
                      left: 94,
                      right: 26,
                      bottom: 115,
                      child: Container(
                        // height: 60,
                        //width: 20,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: Center(
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    fav[index] = !fav[index];
                                  });
                                },
                                icon: Icon(
                                  Icons.favorite,
                                  color: fav[index] ? Colors.red : Colors.black,
                                ))),
                      ),
                    ),
                    Positioned(
                      top: 108, // Move slightly up to overlap
                      left: 105,
                      right: 0,
                      bottom: 20,
                      child: Container(
                        // height: 70,
                        // width: 40,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 236, 106, 45),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                        child: Center(
                            child: Text(
                          "RS.${recommenddata[index]['price'].toString()}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        )),
                      ),
                    ),
                  ],
                );
              }),
        ],
      ),
    );
  }
}
