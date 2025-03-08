import 'package:flutter/material.dart';
import 'package:smitproject/data/bestsellerdata.dart';

class Bestseller extends StatefulWidget {
  const Bestseller({super.key});

  @override
  State<Bestseller> createState() => _BestsellerState();
}

class _BestsellerState extends State<Bestseller> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Best Seller",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              label: const Text(
                "View All",
                style: TextStyle(
                  color: Color.fromARGB(255, 236, 106, 45),
                ),
              ),
              icon: const Icon(
                Icons.arrow_left,
                color: Color.fromARGB(255, 236, 106, 45),
              ),
            )
          ],
        ),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: bestsellerdata.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color.fromARGB(255, 243, 233, 202),
                            image: DecorationImage(
                              image: AssetImage(bestsellerdata[index]['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 108, // Move slightly up to overlap
                          left: 30,
                          right: 0,
                          bottom: 20,
                          child: Container(
                            // height: 60,
                            //width: 20,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 236, 106, 45),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20))),
                            child: Center(
                                child: Text(
                              "RS.${bestsellerdata[index]['price'].toString()}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
