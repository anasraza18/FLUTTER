import 'package:flutter/material.dart';
import 'package:myapp/Widgets/carts.dart';

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
                color: Colors.white.withOpacity(0.6),
              ),

              //My All products

              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: ProductCarts(
                            imagepath: "assets/images/1.jpg",
                            name: "Product 1",
                            price: 220),
                      ),
                      //product 2
                      Expanded(
                        child: ProductCarts(
                            imagepath: "assets/images/2.jpg",
                            name: "Product 2",
                            price: 280),
                      ),
                    ],
                  ),
                  //row 2
                  Row(
                    children: [
                      Expanded(
                        child: ProductCarts(
                            imagepath: "assets/images/3.jpg",
                            name: "Product 3",
                            price: 880),
                      ),
                      //product 2
                      Expanded(
                        child: ProductCarts(
                            imagepath: "assets/images/6.jpg",
                            name: "Product 4",
                            price: 500),
                      ),
                    ],
                  ),
                  // row 3
                  Row(
                    children: [
                      Expanded(
                        child: ProductCarts(
                            imagepath: "assets/images/5.jpg",
                            name: "Product 5",
                            price: 440),
                      ),
                      //product 2
                      Expanded(
                        child: ProductCarts(
                            imagepath: "assets/images/4.jpg",
                            name: "Product 6",
                            price: 270),
                      ),
                    ],
                  ),
                  //row 4
                  Row(
                    children: [
                      Expanded(
                        child: ProductCarts(
                            imagepath: "assets/images/7.jpg",
                            name: "Product 7",
                            price: 220),
                      ),
                      //product 2
                      Expanded(
                        child: ProductCarts(
                            imagepath: "assets/images/8.jpg",
                            name: "Product 8",
                            price: 780),
                      ),
                    ],
                  ),
                  //row 5
                  Row(
                    children: [
                      Expanded(
                        child: ProductCarts(
                            imagepath: "assets/images/9.jpg",
                            name: "Product 9",
                            price: 520),
                      ),
                      //product 2
                      Expanded(
                        child: ProductCarts(
                            imagepath: "assets/images/10.jpg",
                            name: "Product 10",
                            price: 180),
                      ),
                    ],
                  ),
                  // row 6
                  Row(
                    children: [
                      Expanded(
                        child: ProductCarts(
                            imagepath: "assets/images/11.jpg",
                            name: "Product 11",
                            price: 820),
                      ),
                      //product 2
                      Expanded(
                        child: ProductCarts(
                            imagepath: "assets/images/12.jpg",
                            name: "Product 12",
                            price: 380),
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
