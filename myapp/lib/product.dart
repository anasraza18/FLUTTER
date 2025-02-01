import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ICE CREAM   POLAR",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.pink,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg.webp"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/1.jpg"),
                            fit: BoxFit.cover,
                          ),

                          // color: Colors.white.withOpacity(0.4),
                        ),
                        height: 150,
                        width: 150,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/2.jpg"),
                            fit: BoxFit.cover,
                          ),
                          // color: Colors.white.withOpacity(0.4),
                        ),
                        height: 150,
                        width: 150,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/3.jpg"),
                            fit: BoxFit.cover,
                          ),
                          //color: Colors.white.withOpacity(0.4),
                        ),
                        height: 150,
                        width: 150,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/5.jpg"),
                            fit: BoxFit.cover,
                          ),
                          //color: Colors.white.withOpacity(0.4),
                        ),
                        height: 150,
                        width: 150,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/4.jpg"),
                            fit: BoxFit.cover,
                          ),
                          //color: Colors.white.withOpacity(0.4),
                        ),
                        height: 150,
                        width: 150,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/6.jpg"),
                            fit: BoxFit.cover,
                          ),
                          //color: Colors.white.withOpacity(0.4),
                        ),
                        height: 150,
                        width: 150,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/7.jpg"),
                            fit: BoxFit.cover,
                          ),
                          //color: Colors.white.withOpacity(0.4),
                        ),
                        height: 150,
                        width: 150,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/8.jpg"),
                            fit: BoxFit.cover,
                          ),
                          //color: Colors.white.withOpacity(0.4),
                        ),
                        height: 150,
                        width: 150,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/9.jpg"),
                            fit: BoxFit.cover,
                          ),
                          //color: Colors.white.withOpacity(0.4),
                        ),
                        height: 150,
                        width: 150,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/10.jpg"),
                            fit: BoxFit.cover,
                          ),
                          //color: Colors.white.withOpacity(0.4),
                        ),
                        height: 150,
                        width: 150,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/11.jpg"),
                            fit: BoxFit.cover,
                          ),
                          //color: Colors.white.withOpacity(0.4),
                        ),
                        height: 150,
                        width: 150,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/12.jpg"),
                            fit: BoxFit.cover,
                          ),
                          //color: Colors.white.withOpacity(0.4),
                        ),
                        height: 150,
                        width: 150,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/13.jpg"),
                            fit: BoxFit.cover,
                          ),
                          //color: Colors.white.withOpacity(0.4),
                        ),
                        height: 150,
                        width: 150,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/14.jpg"),
                            fit: BoxFit.cover,
                          ),
                          //color: Colors.white.withOpacity(0.4),
                        ),
                        height: 150,
                        width: 150,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
