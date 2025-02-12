import 'package:flutter/material.dart';
import 'package:myapp3/widgets/favouriteWeidget.dart';

// ignore: must_be_immutable
class homeWed extends StatelessWidget {
  List items = [
    {
      'images': "assets/images/2.webp",
      'product': "product 1",
      'Price': 200,
    },
    {
      'images': "assets/images/3.webp",
      'product': "product 2",
      'Price': 300,
    },
    {
      'images': "assets/images/4.webp",
      'product': "product 3",
      'Price': 400,
    },
    {
      'images': "assets/images/5.webp",
      'product': "product 4",
      'Price': 500,
    },
    {
      'images': "assets/images/6.webp",
      'product': "product 5",
      'Price': 700,
    },
    {
      'images': "assets/images/7.webp",
      'product': "product 6",
      'Price': 800,
    },
    {
      'images': "assets/images/8.webp",
      'product': "product 7",
      'Price': 700,
    },
    {
      'images': "assets/images/9.webp",
      'product': "product 8",
      'Price': 900,
    },
    {
      'images': "assets/images/10.webp",
      'product': "product 9",
      'Price': 900,
    },
    {
      'images': "assets/images/11.webp",
      'product': "product 10",
      'Price': 100,
    },
    {
      'images': "assets/images/12.webp",
      'product': "product 11",
      'Price': 100,
    },
    {
      'images': "assets/images/13.webp",
      'product': "product 12",
      'Price': 220,
    },
    {
      'images': "assets/images/14.webp",
      'product': "product 13",
      'Price': 230,
    },
    {
      'images': "assets/images/15.webp",
      'product': "product 14",
      'Price': 330,
    },
  ];

  // String images;
  // String product;
  // double Price;

  homeWed({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      width: double.infinity,
      child: ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (contex, index) {
          return Card(
            color: Colors.amber,
            shadowColor: Colors.black,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Center(
                child: ListTile(
                  leading: Stack(
                    children: [
                      Container(
                        width: 100,
                        height: 300,
                        child: ClipRRect(
                          child: Image.asset(
                            items[index]['images'],
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      Positioned(top: 0, right: 0, child: favorite()),
                    ],
                  ),
                  title: Text(
                    items[index]['product'],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "/~Rs.${items[index]['Price'].toString()}",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(Icons.shopping_bag),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
