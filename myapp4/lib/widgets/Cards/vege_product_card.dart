import 'package:flutter/material.dart';
import 'package:myapp4/data/vege_product_data.dart';
import 'package:myapp4/models/cart_provider.dart';
import 'package:myapp4/models/products.dart';
import 'package:myapp4/screens/detail_cards_screen/vege_detail_screen.dart';
import 'package:provider/provider.dart';

class VegeProductCard extends StatefulWidget {
  final List<Product> filtervegedata; //for search
  const VegeProductCard({super.key, required this.filtervegedata});

  @override
  State<VegeProductCard> createState() => _VegeProductCardState();
}

class _VegeProductCardState extends State<VegeProductCard> {
  //---------for favourite-------------------------
  List<bool> favvege = [];
  @override
  void initState() {
    super.initState();
    favvege = List.generate(vegeproductdata.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: widget.filtervegedata.length, //for search

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: MediaQuery.of(context).size.height * 0.30,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          var vege = widget.filtervegedata[index]; //for search
          final cart = Provider.of<CartProvider>(context); //for cart
          bool IsinCart =
              cart.cartItems.any((items) => items.id == vege.id); //for cart
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => VegeDetailScreen(index: index)));
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
                            vege.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            favvege[index] = !favvege[index];
                          });
                        },
                        icon: Icon(Icons.favorite),
                        color: favvege[index] ? Colors.red : Colors.white,
                        iconSize: 36,
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 10, left: 10, top: 10),
                    child: Row(
                      children: [
                        Text(vege.name),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 10, left: 10, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(vege.price.toString()),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: IsinCart
                                ? Colors.white
                                : const Color.fromARGB(255, 245, 204, 189),
                          ),
                          child: IconButton(
                            onPressed: () {
                              if (IsinCart) {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text("Product Already in Cart"),
                                  backgroundColor: Colors.red,
                                  duration: Duration(seconds: 2),
                                ));
                              } else {
                                cart.addToCart(vege);
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text("Product Added to Cart"),
                                  backgroundColor: Colors.green,
                                  duration: Duration(seconds: 2),
                                ));
                              }
                            },
                            icon: IsinCart ? Icon(Icons.done) : Icon(Icons.add),
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
