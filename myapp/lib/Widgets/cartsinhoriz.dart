import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductCartsHoriz extends StatelessWidget {
  String? imagepath;
  String? name;
  double? price;

  ProductCartsHoriz({
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
          Stack(
            children: [
              Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(200.0),
            //clipBehavior: Clip.antiAlias,
            child: Image.asset(
              imagepath ?? "",
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "${name ?? ''}",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Price : Rs.${price.toString()}",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow,
            ),
            child: Text(
              "ADD CART",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
