import 'package:flutter/material.dart';
import 'package:myapp4/data/products_data.dart';
import 'package:myapp4/models/products.dart';
import 'package:myapp4/screens/detail_cards_screen/product_detail_screen.dart';

class AllGridview extends StatefulWidget {
  //------for search filter------------------------
  final List<Product> filteredproductdata;
  AllGridview({super.key, required this.filteredproductdata});

  //----------------------------------------------------

  @override
  State<AllGridview> createState() => _AllGridviewState();
}

class _AllGridviewState extends State<AllGridview> {
  List<bool> fav = [];

  @override
  void initState() {
    super.initState();
    fav = List.generate(productdata.length, (index) => false);
  }

//-----------add to cart--------------------------

//----------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: widget.filteredproductdata.length, //for search filter
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: MediaQuery.of(context).size.height * 0.30,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          var product = widget.filteredproductdata[index]; //for search filter
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => allproductdetails(index: index),
                ),
              );
            },
            child: Card(
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
                            product.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            fav[index] = !fav[index];
                          });
                        },
                        icon: Icon(Icons.favorite),
                        color: fav[index] ? Colors.red : Colors.white,
                        iconSize: 36,
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 10, left: 10, top: 10),
                    child: Row(
                      children: [
                        Text(product.name),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 10, left: 10, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(product.price.toString()),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 245, 204, 189),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add),
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
