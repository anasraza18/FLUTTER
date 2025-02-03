import 'package:flutter/material.dart';
import 'package:myapp/Loginin_view.dart';
import 'package:myapp/Widgets/cartsinvert.dart';
import 'package:myapp/Widgets/cartsinhoriz.dart';
import 'package:myapp/Widgets/slideAction.dart';
import 'package:myapp/messanger.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app Bar
      appBar: AppBar(
        leading: const Icon(Icons.icecream, color: Colors.white, size: 30),
        title: const Text(
          "ICEcream's Ocean",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.pink,
        actions: [
          IconButton(
            onPressed: () {
              slideaction(
                func: MessangerView(), // LoginView widget
              ).navigate(context);
            },
            icon: Icon(
              Icons.chat,
              color: Colors.yellow,
              size: 24,
            ),
          ),
          IconButton(
            onPressed: () {
              slideaction(
                func: LoginView(), // LoginView widget
              ).navigate(context);
            },
            icon: Icon(
              Icons.account_circle,
              color: Colors.yellow,
              size: 24,
            ),
          ),
        ],
      ),
      //Body
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.webp"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          // Yeh parent scrollable container hai
          child: Column(
            children: [
              // Horizontal Products (yeh bhi ab vertical scroll ka part hai)
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCartsHoriz(
                          imagepath: "assets/images/15.webp",
                          name: "Product 15",
                          price: 220),
                      ProductCartsHoriz(
                          imagepath: "assets/images/16.webp",
                          name: "Product 16",
                          price: 280),
                      ProductCartsHoriz(
                          imagepath: "assets/images/17.webp",
                          name: "Product 17",
                          price: 880),
                      ProductCartsHoriz(
                          imagepath: "assets/images/18.webp",
                          name: "Product 18",
                          price: 500),
                      ProductCartsHoriz(
                          imagepath: "assets/images/19.webp",
                          name: "Product 19",
                          price: 500),
                      ProductCartsHoriz(
                          imagepath: "assets/images/20.webp",
                          name: "Product 20",
                          price: 500),
                    ],
                  ),
                ),
              ),

              // Vertical Products
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: ProductCarts(
                              imagepath: "assets/images/1.webp",
                              name: "Product 1",
                              price: 220),
                        ),
                        Expanded(
                          child: ProductCarts(
                              imagepath: "assets/images/2.webp",
                              name: "Product 2",
                              price: 280),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ProductCarts(
                              imagepath: "assets/images/3.webp",
                              name: "Product 3",
                              price: 880),
                        ),
                        Expanded(
                          child: ProductCarts(
                              imagepath: "assets/images/6.webp",
                              name: "Product 4",
                              price: 500),
                        ),
                      ],
                    ),
                    // Add more rows as needed...
                    Row(
                      children: [
                        Expanded(
                          child: ProductCarts(
                              imagepath: "assets/images/5.webp",
                              name: "Product 5",
                              price: 880),
                        ),
                        Expanded(
                          child: ProductCarts(
                              imagepath: "assets/images/4.webp",
                              name: "Product 6",
                              price: 500),
                        ),
                      ],
                    ),
                    // Add more rows as needed...
                    Row(
                      children: [
                        Expanded(
                          child: ProductCarts(
                              imagepath: "assets/images/7.webp",
                              name: "Product 7",
                              price: 880),
                        ),
                        Expanded(
                          child: ProductCarts(
                              imagepath: "assets/images/8.webp",
                              name: "Product 8",
                              price: 500),
                        ),
                      ],
                    ),
                    // Add more rows as needed...
                    Row(
                      children: [
                        Expanded(
                          child: ProductCarts(
                              imagepath: "assets/images/9.webp",
                              name: "Product 9",
                              price: 880),
                        ),
                        Expanded(
                          child: ProductCarts(
                              imagepath: "assets/images/10.webp",
                              name: "Product 10",
                              price: 500),
                        ),
                      ],
                    ),
                    // Add more rows as needed...
                    Row(
                      children: [
                        Expanded(
                          child: ProductCarts(
                              imagepath: "assets/images/11.webp",
                              name: "Product 11",
                              price: 880),
                        ),
                        Expanded(
                          child: ProductCarts(
                              imagepath: "assets/images/12.webp",
                              name: "Product 12",
                              price: 500),
                        ),
                      ],
                    ),
                    // Add more rows as needed...
                    Row(
                      children: [
                        Expanded(
                          child: ProductCarts(
                              imagepath: "assets/images/13.webp",
                              name: "Product 13",
                              price: 880),
                        ),
                        Expanded(
                          child: ProductCarts(
                              imagepath: "assets/images/14.webp",
                              name: "Product 14",
                              price: 500),
                        ),
                      ],
                    ),
                    // Add more rows as needed...
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
