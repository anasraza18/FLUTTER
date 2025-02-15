import 'package:flutter/material.dart';
import 'package:myapp4/data/vege_product_data.dart';
import 'package:myapp4/models/products.dart';
import 'package:myapp4/screens/detail_cards_screen/vege_detail_screen.dart';

class VegeProductCard extends StatefulWidget {
  final List<Product> filtervegedata;
  const VegeProductCard({super.key, required this.filtervegedata});

  @override
  State<VegeProductCard> createState() => _VegeProductCardState();
}

class _VegeProductCardState extends State<VegeProductCard> {
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
        itemCount: widget.filtervegedata.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: MediaQuery.of(context).size.height * 0.30,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          var vege = widget.filtervegedata[index];
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
