import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductList extends StatelessWidget {
  List data = [
    {'product': 'product 1', 'price': '223', 'image': 'assets/images/21.webp'},
    {'product': 'product 2', 'price': '113', 'image': 'assets/images/2.webp'},
    {'product': 'product 3', 'price': '653', 'image': 'assets/images/3.webp'},
    {'product': 'product 4', 'price': '983', 'image': 'assets/images/6.webp'},
    {'product': 'product 5', 'price': '223', 'image': 'assets/images/15.webp'},
    {'product': 'product 6', 'price': '113', 'image': 'assets/images/4.webp'},
    {'product': 'product 7', 'price': '653', 'image': 'assets/images/7.webp'},
    {'product': 'product 8', 'price': '983', 'image': 'assets/images/18.webp'},
    {'product': 'product 9', 'price': '653', 'image': 'assets/images/9.webp'},
    {'product': 'product 10', 'price': '983', 'image': 'assets/images/16.webp'},
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
        color: Color(0xFFFFDAB9),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 10,
              mainAxisExtent: MediaQuery.of(context).size.height * 0.30),
          padding: EdgeInsets.all(10),
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.white,
              shadowColor: Colors.black,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      child:
                          Image.asset(data[index]['image'], fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            data[index]['product'],
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Rs.${data[index]['price']}  ",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Add to Cart",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(25, 30),
                                backgroundColor: Color(0xFFFFDAB9)),
                          ),
                        ],
                      ),
                    ],
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
