import 'package:flutter/material.dart';
import 'package:myapp4/data/salat_product_data.dart';
import 'package:myapp4/models/cart_provider.dart';
import 'package:myapp4/models/products.dart';
import 'package:myapp4/screens/detail_cards_screen/salat_detail_screen.dart';
import 'package:provider/provider.dart';

class SalatProductCard extends StatefulWidget {
  final List<Product> filtersalatdata; //for search
  const SalatProductCard({super.key, required this.filtersalatdata});

  @override
  State<SalatProductCard> createState() => _SalatProductCardState();
}

class _SalatProductCardState extends State<SalatProductCard> {
  //-------------for favourite--------------------
  List<bool> salatfav = [];
  @override
  void initState() {
    super.initState();
    salatfav = List.generate(salatproductdata.length, (index) => false);
  }

//--------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: widget.filtersalatdata.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: MediaQuery.of(context).size.height * 0.30,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          var salat = widget.filtersalatdata[index]; //for search
          final cart = Provider.of<CartProvider>(context); // for cart
          bool isInCart = cart.cartItems.any((items) => items.id == salat.id);
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SalatDetailScreen(index: index)));
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
                            salat.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            salatfav[index] = !salatfav[index];
                          });
                        },
                        icon: Icon(Icons.favorite),
                        color: salatfav[index] ? Colors.red : Colors.white,
                        iconSize: 36,
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 10, left: 10, top: 10),
                    child: Row(
                      children: [
                        Text(salat.name),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 10, left: 10, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(salat.price.toString()),
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
                                  content: Text("Cart Already in Cart"),
                                  backgroundColor: Colors.red,
                                  duration: Duration(seconds: 2),
                                ));
                              } else {
                                cart.addToCart(salat);
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text("Product Added in Cart"),
                                  backgroundColor: Colors.green,
                                  duration: Duration(seconds: 2),
                                ));
                              }
                            },
                            icon: isInCart ? Icon(Icons.done) : Icon(Icons.add),
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
