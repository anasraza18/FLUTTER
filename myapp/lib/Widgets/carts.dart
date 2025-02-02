import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductCarts extends StatelessWidget {
  String? imagepath;
  String? name;
  double? price;
  ProductCarts({
    super.key,
    required this.imagepath,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.pink.withOpacity(0.5),
        border: Border.all(
          color: Colors.yellow,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(200.0),
            //clipBehavior: Clip.antiAlias,
            child: Image.asset(
              imagepath ?? "",
              height: 140,
              width: 170,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "${name ?? ''}",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Price : Rs.${price.toString()}",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow,
            ),
            child: Text(
              "ADD CART",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
