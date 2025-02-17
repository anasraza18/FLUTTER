import 'package:flutter/material.dart';
import 'package:myapp4/data/fruits_product_data.dart';
import 'package:myapp4/models/cart_provider.dart';
import 'package:myapp4/models/products.dart';
import 'package:myapp4/screens/detail_cards_screen/fruits_detail_screen.dart';
import 'package:provider/provider.dart';

class FruitsProductCard extends StatefulWidget {
  final List<Product> filterfruitdata; //for search
  const FruitsProductCard({super.key, required this.filterfruitdata});

  @override
  State<FruitsProductCard> createState() => _FruitsProductCardState();
}

class _FruitsProductCardState extends State<FruitsProductCard> {
  //--------------for search--------------------------------
  List<bool> favfruits = [];
  @override
  void initState() {
    super.initState();
    favfruits = List.generate(fruitsproductdata.length, (index) => false);
  }

//-------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: widget.filterfruitdata.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: MediaQuery.of(context).size.height * 0.30,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          var fruit = widget.filterfruitdata[index]; //fpr search
          final cart = Provider.of<CartProvider>(context); //for cart
          bool isInCart =
              cart.cartItems.any((item) => item.id == fruit.id); //for cart
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FruitsDetailScreen(index: index)));
            },
            child: Card(
              // color: Colors.red,
              shadowColor: Colors.black,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.17,
                        width: MediaQuery.of(context).size.width * 0.40,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            fruit.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            favfruits[index] = !favfruits[index];
                          });
                        },
                        icon: Icon(Icons.favorite),
                        color: favfruits[index] ? Colors.red : Colors.white,
                        iconSize: 36,
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 10, left: 10, top: 10),
                    child: Row(
                      children: [
                        Text(fruit.name),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 10, left: 10, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(fruit.price.toString()),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isInCart
                                ? Colors.white
                                : const Color.fromARGB(255, 245, 204, 189),
                          ),
                          child: IconButton(
                            onPressed: () {
                              if (isInCart) {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text("Product Already in Cart"),
                                  backgroundColor: Colors.red,
                                  duration: Duration(seconds: 2),
                                ));
                              } else {
                                cart.addToCart(fruit);
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text("Producr Added To the Cart"),
                                  backgroundColor: Colors.green,
                                  duration: Duration(seconds: 2),
                                ));
                              }
                            },
                            icon: isInCart ? Icon(Icons.add) : Icon(Icons.done),
                            color: Colors.brown,
                            highlightColor:
                                const Color.fromARGB(255, 236, 191, 174),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
