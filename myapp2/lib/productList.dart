import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductList extends StatelessWidget {
  List data = [
    {'product': 'product 1', 'Price': 223},
    {'product': 'product 2', 'Price': 113},
    {'product': 'product 3', 'Price': 653},
    {'product': 'product 4', 'Price': 983},
    {'product': 'product 5', 'Price': 223},
    {'product': 'product 6', 'Price': 113},
    {'product': 'product 7', 'Price': 653},
    {'product': 'product 8', 'Price': 983},
    {'product': 'product 9', 'Price': 653},
    {'product': 'product 10', 'Price': 983},
  ];
  ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Products",
          style: TextStyle(
              fontSize: 38, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 10,
              mainAxisExtent: 200),
          padding: EdgeInsets.all(20),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.black,
              shadowColor: Colors.black87,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ClipRRect(
                      child: Image.asset("assets/images/1.webp"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "product",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "price",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                                onPressed: () {}, child: Text("Add to Cart")),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
