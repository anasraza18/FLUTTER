import 'package:flutter/material.dart';
import 'package:smitproject/screens/authentication/loginscreen.dart';
import 'package:smitproject/screens/authentication/signupscreen.dart';

class Productwidget extends StatefulWidget {
  const Productwidget({super.key});

  @override
  State<Productwidget> createState() => _ProductwidgetState();
}

class _ProductwidgetState extends State<Productwidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      // Ensures Stack takes full screen height
      child: Stack(
        children: [
          // Top Yellow Bar with Back Button
          Container(
            height: 250,
            width: double.infinity, // Takes full width
            color: Color.fromARGB(255, 243, 205, 91), // Background color
            padding: EdgeInsets.symmetric(
                horizontal: 10), // Padding for responsiveness
            alignment: Alignment.center, // Centers input field
            child: Padding(
              padding: const EdgeInsets.only(
                top: 70,
                right: 5,
                left: 5,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 30,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.white, // Light orange background
                          borderRadius:
                              BorderRadius.circular(20), // Rounded corners
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 15), // Inner padding
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.swipe), // No border
                          ),
                          style: TextStyle(fontSize: 16), // Text size
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.shopping_bag_outlined,
                              color: Color.fromARGB(255, 236, 106, 45),
                            )),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications_active_outlined,
                              color: Color.fromARGB(255, 236, 106, 45),
                            )),
                      ),
                      Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.person_2_outlined,
                                color: Color.fromARGB(255, 236, 106, 45),
                              ))),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Good Morning",
                        style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Rise And Shine! It's Breakfast Time",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 236, 106, 45),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Black Container (Moved Up & Height Fixed)
          Positioned(
            top: 200, // Move slightly up to overlap
            left: 0,
            right: 0,
            bottom: 0, // Ensures it fills the remaining space
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        child: GridView.builder(
                            itemCount: 4,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              crossAxisSpacing: 2,
                              childAspectRatio: 1,
                              //mainAxisExtent: 5,
                              // mainAxisSpacing: 5,
                            ),
                            itemBuilder: (context, index) {
                              return Container(
                                height: 300,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.amber,
                                          ),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.fastfood_outlined,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Snacks"),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
