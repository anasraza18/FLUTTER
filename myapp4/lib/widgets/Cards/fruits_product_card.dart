import 'package:flutter/material.dart';
import 'package:myapp4/data/fruits_product_data.dart';
import 'package:myapp4/screens/detail_cards_screen/fruits_detail_screen.dart';

class FruitsProductCard extends StatefulWidget {
  const FruitsProductCard({super.key});

  @override
  State<FruitsProductCard> createState() => _FruitsProductCardState();
}

class _FruitsProductCardState extends State<FruitsProductCard> {
  List<bool> favfruits = [];
  @override
  void initState() {
    super.initState();
    favfruits = List.generate(fruitsproductdata.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: fruitsproductdata.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: MediaQuery.of(context).size.height * 0.30,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
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
                            fruitsproductdata[index].image,
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
                        Text(fruitsproductdata[index].name),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 10, left: 10, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(fruitsproductdata[index].price.toString()),
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
